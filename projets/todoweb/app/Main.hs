{-# LANGUAGE OverloadedStrings #-}

-- import Control.Monad (when)
import Control.Monad.IO.Class (liftIO)
import Data.IORef
import Network.Wai.Middleware.RequestLogger (logStdoutDev)
import Web.Scotty

type Task =  String

type Model = [Task]

initialModel :: Model
initialModel = 
    [ "aller chercher le pain"
    , "arrêter le changement climatique"
    ]

main :: IO ()
main = do

    modelRef <- newIORef initialModel

    scotty 3000 $ do

        middleware logStdoutDev

        get "/" $ file "public/index.html"

        get "/tasks" $ do
            tasks <- liftIO $ readIORef modelRef
            json tasks

        post "/add" $ do
            label <- formParam "label"
            liftIO $ putStrLn ("TODO add -> " ++ label)
            redirect "/"

