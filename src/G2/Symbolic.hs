module G2.Symbolic (mkSymbolic) where

-- | Generates a fresh symbolic variable during symbolic execution
mkSymbolic :: IO a
mkSymbolic = return symgen

-- Hack to get a SymGen somewhere in base
symgen :: a
symgen = symgen
