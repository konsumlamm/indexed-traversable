{-# LANGUAGE CPP         #-}
#ifdef __GLASGOW_HASKELL__
#if MIN_VERSION_base(4,17,0)
{-# LANGUAGE Safe #-}
#elif __GLASGOW_HASKELL__ >= 702
{-# LANGUAGE Trustworthy #-}
#endif
#else
{-# LANGUAGE RankNTypes #-}
#endif
module GhcList (
    build,
) where

#ifdef __GLASGOW_HASKELL__
#if MIN_VERSION_base(4,17,0)
import GHC.List (build)
#else
import GHC.Exts (build)
#endif
#else
build :: (forall b. (a -> b -> b) -> b -> b) -> [a]
build g = g (:) []
#endif
