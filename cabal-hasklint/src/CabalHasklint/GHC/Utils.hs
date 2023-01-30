module CabalHasklint.GHC.Utils where

import Peura

import GHC.Driver.Ppr                                      (showPpr)
import GHC.Driver.Session                                  (DynFlags, defaultDynFlags)
import GHC.Utils.Outputable                                (Outputable)
import Language.Haskell.GhclibParserEx.GHC.Settings.Config (fakeLlvmConfig, fakeSettings)

fakeDynFlags :: DynFlags
fakeDynFlags = defaultDynFlags fakeSettings fakeLlvmConfig

fakeShowPpr :: Outputable a => a -> String
fakeShowPpr = showPpr fakeDynFlags

