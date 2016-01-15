module Paths_TastierMachine (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/inn1t-f00s/.cabal/bin"
libdir     = "/home/inn1t-f00s/.cabal/lib/x86_64-linux-ghc-7.10.2/TastierMachine-0.1.0.0-5E59p0mOFsj7kRh8apu1Lw"
datadir    = "/home/inn1t-f00s/.cabal/share/x86_64-linux-ghc-7.10.2/TastierMachine-0.1.0.0"
libexecdir = "/home/inn1t-f00s/.cabal/libexec"
sysconfdir = "/home/inn1t-f00s/.cabal/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "TastierMachine_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "TastierMachine_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "TastierMachine_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "TastierMachine_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "TastierMachine_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
