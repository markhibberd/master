{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module Master.Serial (
    module X
  , loadMasterConfig
  ) where

import           Master.Data
import           Master.Serial.Toml as X

import           P

import           System.IO


loadMasterConfig :: Maybe FilePath -> Maybe JobName -> IO (Either MasterLoadError MasterConfig)
loadMasterConfig fp =
  loadMasterConfigToml (fromMaybe "master.toml" fp)
