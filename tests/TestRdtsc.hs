module Main where

import Rdtsc.Rdtsc

main = do
  t1 <- rdtsc
  t2 <- rdtsc
  putStrLn ("Cost of rdtsc (ffi call):    " ++ show (t2 - t1))
