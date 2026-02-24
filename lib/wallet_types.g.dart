// GENERATED CODE - DO NOT MODIFY BY HAND
// This file is generated from wallet_type.dart

import 'package:cw_core/wallet_type.dart';

const availableWalletTypes = [
  WalletType.monero,
  WalletType.xmc,
  WalletType.bitcoin,
  WalletType.litecoin,
  WalletType.haven,
  WalletType.ethereum,
  WalletType.bitcoinCash,
  WalletType.nano,
  WalletType.banano,
  WalletType.polygon,
  WalletType.solana,
  WalletType.tron,
  WalletType.wownero,
  WalletType.zano,
  WalletType.decred,
];

// For Hive adapters - manually defined based on WalletType enum
const walletTypeToInt = {
  WalletType.monero: 0,
  WalletType.xmc: 14,
  WalletType.bitcoin: 1,
  WalletType.litecoin: 2,
  WalletType.haven: 3,
  WalletType.ethereum: 4,
  WalletType.nano: 5,
  WalletType.banano: 6,
  WalletType.bitcoinCash: 7,
  WalletType.polygon: 8,
  WalletType.solana: 9,
  WalletType.tron: 10,
  WalletType.wownero: 11,
  WalletType.zano: 12,
  WalletType.decred: 13,
  WalletType.none: -1,
};

int walletTypeToSerializedInt(WalletType type) => walletTypeToInt[type] ?? -1;
