module G2.Symbolic ( mkSymbolic
                   , assume
                   , assumeIO
                   , assert
                   , assertIO ) where

-- import Unsafe.G2

-- | Generates a fresh symbolic variable during symbolic execution
mkSymbolic :: IO a
mkSymbolic = return symgen

-- Hack to get a SymGen somewhere in base
symgen :: a
symgen = symgen

{-# NOINLINE assume #-}
assume :: Bool -> a -> a
assume _ x = x

assumeIO :: Bool -> IO ()
assumeIO pred = assume pred (return ())

assert :: Bool -> a -> a
assert True x = x
assert False _ = error "assert: assertion violation"

assertIO :: Bool -> IO ()
assertIO pred = assert pred (return ())