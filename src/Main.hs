{-# LANGUAGE OverloadedStrings #-}

import Control.Lens
import Data.Aeson (Value)
import Data.Map as Map
import Network.Wreq

type Resp = Response (Map String Value)

main = do
    let opts = defaults & header "Accept" .~ ["application/json"]
    r <- asJSON =<< getWith opts "https://uaa.run.pivotal.io/info" :: IO Resp
    print (view responseBody r)
