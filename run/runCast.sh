#!/bin/sh

cast call 0x6CD3204B3C1CF737489C4BC2760bAAf2886f4dC1 "getDealByIndex(uint256)((bytes,uint64,bool,string,int64,int64,uint256,uint256,uint256,uint64,(string,uint64,bool,bool)))" 1

# (
#   0x626167613665613473656171656b373263727a7376657a6b7466756261663370376a6e636e6865376534796f6b653264666d65707335646b3673776867676671,
#   32768,
#   false,
#   Test0000001,
#   520000,
#   1555200,
#   0,
#   0,
#   0,
#   1,
#   (
#     https://data-depot.lighthouse.storage/api/download/download_car?fileId=cc601ad7-b6fc-4ed2-ba80-e5b7bebcb5a6.car,
#     26240,
#     false,
#     false
#   )
# )


# struct DealRequest {
#     bytes piece_cid;
#     uint64 piece_size;
#     bool verified_deal;
#     string label;
#     int64 start_epoch;
#     int64 end_epoch;
#     uint256 storage_price_per_epoch;
#     uint256 provider_collateral;
#     uint256 client_collateral;
#     uint64 extra_params_version;
#     ExtraParamsV1 extra_params;
# }

# struct ExtraParamsV1 {
#     string location_ref;
#     uint64 car_size;
#     bool skip_ipni_announce;
#     bool remove_unsealed_copy;
# }
