{-# LANGUAGE ScopedTypeVariables #-}
module LibSpec (spec) where

import      Lib     (square,ggt) 
import      Test.Hspec
import      Test.QuickCheck

spec :: Spec 
spec = do
    describe "square" $ do
        it "calculates the square of 5.3" $
            square 5.3 `shouldBe` 28.09
        it "calculates the square of an arbitrary integer" $ 
            property $ \(n :: Integer) -> square n == n * n
        it "calculates the square of an arbitrary double" $ 
            property $ \(n :: Double) -> square n == n * n
    describe "ggt" $ do
        it "calculates the gcd of 12 and 8" $
            ggt 12 8 `shouldBe` 4
        it "calculates the same as Haskells gcd" $
            property $ \a b -> ggt (abs a) (abs b) == gcd (abs a) (abs b)
         