#!/bin/sh

forge script script/MakeDealProposal.s.sol --rpc-url fevm --broadcast \
      --gas-estimate-multiplier 20000 --with-gas-price 100000
