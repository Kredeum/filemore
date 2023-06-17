#!/bin/sh

DEAL_CLIENT=0x6CD3204B3C1CF737489C4BC2760bAAf2886f4dC1

cast call $DEAL_CLIENT "getDealByIndex(uint256)((bytes,uint64,bool,string,int64,int64,uint256,uint256,uint256,uint64,(string,uint64,bool,bool)))" 0
echo
cast call $DEAL_CLIENT "getDealByIndex(uint256)((bytes,uint64,bool,string,int64,int64,uint256,uint256,uint256,uint64,(string,uint64,bool,bool)))" 1
echo
cast call $DEAL_CLIENT "getDealByIndex(uint256)((bytes,uint64,bool,string,int64,int64,uint256,uint256,uint256,uint64,(string,uint64,bool,bool)))" 2

# (0x626167613665613473656171656b373263727a7376657a6b7466756261663370376a6e636e6865376534796f6b653264666d65707335646b3673776867676671,32768,false,bafybeigp3hpjhqbmpqobsaomcoimdfkfg72o7ylxcian3grkly464cye5a,520000,1555200,0,0,0,1,(https://data-depot.lighthouse.storage/api/download/download_car?fileId=cc601ad7-b6fc-4ed2-ba80-e5b7bebcb5a6.car,26240,false,false))

# struct DealRequest {
#     bytes piece_cid;                  0x626167613665613473656171656b373263727a7376657a6b7466756261663370376a6e636e6865376534796f6b653264666d65707335646b3673776867676671
#     uint64 piece_size;                32768
#     bool verified_deal;               false
#     string label;                     bafybeigp3hpjhqbmpqobsaomcoimdfkfg72o7ylxcian3grkly464cye5a
#     int64 start_epoch;                520000
#     int64 end_epoch;                  1555200
#     uint256 storage_price_per_epoch;  0
#     uint256 provider_collateral;      0
#     uint256 client_collateral;        0
#     uint64 extra_params_version;      1
#     ExtraParamsV1 extra_params;
# }

# struct ExtraParamsV1 {
#     string location_ref;              https://data-depot.lighthouse.storage/api/download/download_car?fileId=cc601ad7-b6fc-4ed2-ba80-e5b7bebcb5a6.car
#     uint64 car_size;                  26240
#     bool skip_ipni_announce;          false
#     bool remove_unsealed_copy;        false
# }
