{-# LANGUAGE BangPatterns, MagicHash, RankNTypes, ViewPatterns #-}

module SMT.String.GHC.Base where

import GHC.Prim2

($!+$++) :: forall a . ([] a) -> ([] a) -> ([] a)
($!+$++) z1 z2 = let !x = (let !y1 = strAppend#  z1 z2 in y1) in x


