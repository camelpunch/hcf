{-# LANGUAGE OverloadedStrings #-}

import Network.Wreq
import Control.Lens

main = do
     r <- get "https://api.run.pivotal.io/v2/info"
     print (view responseBody r)
