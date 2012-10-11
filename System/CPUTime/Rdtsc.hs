--------------------------------------------------------------------------
-- |
-- Module:     System.CPUTime.Rdtsc
-- Copyright:  (c) 2006-2007,2010, 2012 Martin Grabmueller & Echo Nolan
-- License:    BSD3
-- 
-- Maintainer:  echo@echonolan.net
-- Stability:   experimental
-- Portability: at own risk. Amd64/linux tested and working.
--
-- This module provides the function "rdtsc" for accessing the equivalent of
-- x86's rdtsc instruction on your processor. To oversimplify quite a bit,
-- this is the number of clock cycles since bootup. You should generally only
-- use this as a source of relative time.
--
-- As an example, you may use the following program to measure the overhead
-- of calling this function:
--
-- > module Main where
-- > import System.CPUTime.Rdtsc
-- >
-- > main = do
-- >   t1 <- rdtsc
-- >   t2 <- rdtsc
-- >   putStrLn ("Cost of rdtsc (ffi call):    " ++ show (t2 - t1))
--------------------------------------------------------------------------
module System.CPUTime.Rdtsc(rdtsc) where

import Foreign

foreign import ccall unsafe "rdtsc.h" rdtsc :: IO Word64
