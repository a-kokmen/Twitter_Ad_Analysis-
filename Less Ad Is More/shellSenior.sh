#!/bin/bash
python3 /Users/aybarsthereal/Documents/TEDU/Less\ Ad\ Is\ More/TweetCorpusForCorpusDataFolder.py

python3 /Users/aybarsthereal/Documents/TEDU/Less\ Ad\ Is\ More/TweetCorpusForKelimeFolder.py

cat /Users/aybarsthereal/Documents/TEDU/Less\ Ad\ Is\ More/KelimeData/* > /Users/aybarsthereal/Documents/TEDU/Less\ Ad\ Is\ More/kelimeDataBirleşik.txt

python3 /Users/aybarsthereal/Documents/TEDU/Less\ Ad\ Is\ More/fromKelimeDataBilesiktoDictionary.py

python3 /Users/aybarsthereal/Documents/TEDU/Less\ Ad\ Is\ More/cosineBetweenUserToAdv.py

sed -i '' 1d /Users/aybarsthereal/Documents/TEDU/Less\ Ad\ Is\ More/AdvertisementSimilarity.csv

python3 /Users/aybarsthereal/Documents/TEDU/Less\ Ad\ Is\ More/MatrixFromKelimeData.py

sed -i '' 1d /Users/aybarsthereal/Documents/TEDU/Less\ Ad\ Is\ More/similarityMatrix.csv

python3 /Users/aybarsthereal/Documents/TEDU/Less\ Ad\ Is\ More/CosineFromMatrix.py

sed -i '' 1d /Users/aybarsthereal/Documents/TEDU/Less\ Ad\ Is\ More/ZippedSimilarityUserAdvertisementClusters.csv

ruby -rcsv -e 'puts CSV.parse(STDIN).transpose.map &:to_csv' < /Users/aybarsthereal/Documents/TEDU/Less\ Ad\ Is\ More/ZippedSimilarityUserAdvertisementClusters.csv > /Users/aybarsthereal/Documents/TEDU/Less\ Ad\ Is\ More/transpose.csv
