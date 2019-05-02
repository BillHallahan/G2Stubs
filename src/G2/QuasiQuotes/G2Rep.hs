module G2.QuasiQuotes.G2Rep where

import Language.Haskell.TH

derivingG2Rep :: Name -> Q [Dec]
derivingG2Rep _ = return []