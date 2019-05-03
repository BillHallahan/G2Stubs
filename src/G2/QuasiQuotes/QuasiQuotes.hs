module G2.QuasiQuotes.QuasiQuotes where

import Language.Haskell.TH.Quote

g2 :: QuasiQuoter
g2 = QuasiQuoter { quoteExp = undefined
                 , quotePat = undefined
                 , quoteType = undefined
                 , quoteDec = undefined }
