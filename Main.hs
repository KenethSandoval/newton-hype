sumOfSquares :: [Integer] -> Integer
sumOfSquares l = sum [x * x | x <- l]

secondDegreeEquations :: Double -> Double -> Double -> [Double]
secondDegreeEquations a b c = 
  [(-b+d)/n, (-b-d)/n]
  where d = sqrt(b*b-4*a*c)
        n = 2*a

absoluteValue :: (Num a, Ord a) => a -> a
absoluteValue x | x > 0 = x
                | otherwise = -x

main :: IO()
main = do
  let result =  sumOfSquares [1, 2, 3]
  let resultTest = secondDegreeEquations 1 3 2
  let resultAbsolute = absoluteValue (-4567899)

  print result
  print resultTest
  print resultAbsolute
