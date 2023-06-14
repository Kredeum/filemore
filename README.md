# FileMore - HackFS 2023


*FileMore extends NFT longevity with Filecoin's bound SmartAccounts (ERC-6551)*


### Description
FileMore improves NFT longevity  by enabling seamless payment for extended archival time on Filecoin network, empowering anyone to preserve and protect their NFTs for the long term.

Simply deposit funds into the NFT-bound SmartAccount, which will cover the costs of Filecoin deals and extend its lifespan

### How it's made
FileMore leverages ERC-6551 to establish a bound SmartAccount on the Filecoin network for any NFT across various blockchains. This SmartAccount facilitates seamless receipt of funds and enables payment for Filecoin deals, ultimately extending the archival time of the associated NFT.

### BUILDING FileMore

0/ Filecoin FEVM
- [x] Setup foundry for FEVM, from
https://github.com/filecoin-project/fevm-foundry-kit
- [x] Deploy SimpleCoin
- [x] Interact with SimpleCoin

1/ ERC-6551
- [x] Deploy ERC-6551 from ref implementation
https://github.com/erc6551/reference
    - [x] on EVM
    - [x] on FEVM

2/ MakeDeal
- [x] Make FileCoin deal
- [ ] Get FileCoin deal
- [ ] Get more time on a Deal

3/ FileMore
- [x] Merge ERC-6551 and MakeDeal
- [ ] Script FileMore deals, to get more time on Deal
- [ ] Make UI for FileMore Deals
