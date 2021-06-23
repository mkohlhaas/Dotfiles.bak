package internalmain

import (
	"errors"
	"fmt"
	"os"
	"strconv"

	"github.com/kkc/safari-books-downloader/safari"

	"github.com/kkc/safari-books-downloader/ebook"
	"github.com/kkc/safari-books-downloader/utils"

	homedir "github.com/mitchellh/go-homedir"
	"github.com/spf13/cobra"
	"github.com/spf13/viper"

	logrus "github.com/Sirupsen/logrus"
)

var cfgFile string
var bookId string
var username string
var password string
var output string

var rootCmd = &cobra.Command{
	Use:   "safari-downloader bookId",
	Short: "safari-downloader bookId",
	Args: func(cmd *cobra.Command, args []string) error {
		if len(args) < 1 {
			return errors.New("requires bookId")
		}
		_, err := strconv.Atoi(args[0])
		if err != nil {
			return fmt.Errorf("invalid bookid specified: %s", args[0])
		}
		return nil
	},
	Run: DownloadSafariBook,
}

// define flags and handle configuration here (cobra)
func init() {
	cobra.OnInitialize(initConfig)
	//rootCmd.PersistentFlags().StringVar(&cfgFile, "config", "", "config file (default is $HOME/.safari.toml)")
	//rootCmd.PersistentFlags().StringVarP(&bookId, "bookid", "b", "", "the book id of the SafariBooksOnline ePub to be generated")
	rootCmd.PersistentFlags().StringVarP(&username, "username", "u", "", "username of the SafariBooksOnline user - must have a **paid/trial membership**, otherwise will not be able to access the books")
	rootCmd.PersistentFlags().StringVarP(&password, "password", "p", "", "password of the SafariBooksOnline user")
	rootCmd.PersistentFlags().StringVarP(&output, "output", "o", "ebook.epub", "output path the epub file should be saved to")
}

// initConfig reads in config file and ENV variables if set.
func initConfig() {
	if cfgFile != "" {
		// Use config file from the flag.
		viper.SetConfigFile(cfgFile)
	} else {
		home, err := homedir.Dir()
		if err != nil {
			fmt.Println(err)
			os.Exit(1)
		}

		viper.AddConfigPath(home)
		viper.SetConfigName(".safari")
	}

	viper.AutomaticEnv() // read in environment variables that match

	// If a config file is found, read it in.
	if err := viper.ReadInConfig(); err == nil {
		fmt.Println("Using config file:", viper.ConfigFileUsed())
	}
}

func DownloadSafariBook(cmd *cobra.Command, args []string) {
	flags := cmd.Flags()

	//bookid := flags.Lookup("bookid").Value.String()
	bookId = args[0]
	logrus.WithFields(logrus.Fields{
		"BookId": bookId,
	}).Info("Fetch Book")
	username = flags.Lookup("username").Value.String()
	password := flags.Lookup("password").Value.String()
	output := flags.Lookup("output").Value.String()

	if username == "" {
		username = viper.GetString("safari.username")
	}
	if password == "" {
		password = viper.GetString("safari.password")
	}
	safari := safari.NewSafari()
	result, err := safari.FetchBookById(bookId, username, password)
	utils.StopOnErr(err)
	ebook := ebook.NewEbook(result)
	ebook.Save(output)
}

func Main() {
	if err := rootCmd.Execute(); err != nil {
		fmt.Println(err)
		os.Exit(-1)
	}
}
