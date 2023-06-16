#!/bin/sh

solc  --metadata --bin-runtime -o ./broadcast  src/DealClient.sol \
      --optimize --optimize-runs 200 --metadata-hash none --no-optimize-yul --overwrite \
      @filecoin/=lib/filecoin-solidity/  \
      @ensdomains/buffer/=lib/buffer/    \
      solidity-cborutils/=lib/filecoin-solidity/lib/solidity-cborutils/ \
      @zondax/solidity-bignumber/=lib/filecoin-solidity/lib/solidity-bignumber/ \
      @zondax/solidity-cborutils/=lib/filecoin-solidity/lib/solidity-cborutils/
