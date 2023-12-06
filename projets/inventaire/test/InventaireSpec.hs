module InventaireSpec (main, spec) where

import Test.Hspec
-- import Inventaire

main :: IO ()
main = hspec spec

spec :: Spec
spec = do

    describe "fake" $ do
        it "1" $ True `shouldBe` True

    -- TODO

{-

    describe "cmpProduit" $ do

        it "(Orange,6) (Chimay,3)" $ 
          cmpProduit ("Orange",6) ("Chimay",3)
          `shouldBe` GT

        it "(Chimay,6) (Orange,3)" $ 
          cmpProduit ("Chimay",6) ("Orange",3)
          `shouldBe` LT

        it "(Chimay,6) (Chimay,3)" $ 
          cmpProduit ("Chimay",6) ("Chimay",3)
          `shouldBe` EQ

    describe "memeProduit" $ do

        it "(Chimay,6) (Orange,3)" $ 
          memeProduit ("Chimay",6) ("Orange",3)
          `shouldBe` False

        it "(Chimay,6) (Chimay,3)" $ 
          memeProduit ("Chimay",6) ("Chimay",3)
          `shouldBe` True

    describe "calculerInventaireProduit" $ do

        it "(Chimay,6) (Chimay,3)" $ 
          calculerInventaireProduit [("Chimay",6), ("Chimay",3)]
          `shouldBe` ("Chimay",9)

        it "(Chimay,6)" $ 
          calculerInventaireProduit [("Chimay",6)]
          `shouldBe` ("Chimay",6)

    describe "calculerInventaire" $ do

        it "(Chimay,6) (Orange,3)" $ 
          calculerInventaire [("Chimay",6), ("Orange",3)]
          `shouldBe` [("Chimay",6), ("Orange",3)]

        it "(Chimay,6) (Orange,3) (Chimay,4)" $ 
          calculerInventaire [("Chimay",6), ("Orange",3), ("Chimay",4)]
          `shouldBe` [("Chimay",10), ("Orange",3)]

        it "(Chimay,6) (Chimay,3) (Orange,4)" $ 
          calculerInventaire [("Chimay",6), ("Chimay",3), ("Orange",4)]
          `shouldBe` [("Chimay",9), ("Orange",4)]

-}

