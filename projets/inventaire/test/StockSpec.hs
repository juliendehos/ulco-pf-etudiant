module StockSpec (main, spec) where

import Test.Hspec
import Stock

main :: IO ()
main = hspec spec

spec :: Spec
spec = do

    describe "fake" $ do

        it "1" $ True `shouldBe` True

    -- TODO

{-

    describe "lireStock" $ do

        it "." $ lireStock "" `shouldBe` []

        it "Chimay;6" $ lireStock "Chimay;6" `shouldBe` [("Chimay",6)]

        it "Chimay;6\nOrange;3" $ 
          lireStock "Chimay;6\nOrange;3" 
          `shouldBe` [("Chimay",6), ("Orange",3)]

        it "Chimay;6\nChimay\nOrange;3" $ 
          lireStock "Chimay;6\nOrange;3" 
          `shouldBe` [("Chimay",6), ("Orange",3)]

        it "Chimay;6\nChimay\nOrange;3\nChimay;3" $ 
          lireStock "Chimay;6\nOrange;3\nChimay;3" 
          `shouldBe` [("Chimay",6), ("Orange",3), ("Chimay",3)]

-}

