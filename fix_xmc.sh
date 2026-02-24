#!/bin/bash
# Fix WalletType.xmc switch cases

# List of files to fix from the error messages
FILES=(
  "lib/view_model/send/fees_view_model.dart"
  "lib/view_model/dashboard/home_settings_view_model.dart"
  "lib/view_model/dashboard/dashboard_view_model.dart"
  "lib/view_model/exchange/exchange_view_model.dart"
  "lib/view_model/node_list/node_create_or_edit_view_model.dart"
  "lib/view_model/transaction_details_view_model.dart"
  "lib/view_model/wallet_address_list/wallet_address_list_view_model.dart"
  "lib/view_model/wallet_keys_view_model.dart"
  "lib/view_model/wallet_restore_view_model.dart"
  "lib/view_model/send/output.dart"
  "lib/view_model/dashboard/transaction_list_item.dart"
)

for file in "${FILES[@]}"; do
  if [ -f "/home/monero/cake_wallet/$file" ]; then
    echo "Fixing $file..."
    # Add XMC case after monero case in switch statements
    sed -i 's/case WalletType.monero:/case WalletType.monero:\n    case WalletType.xmc:/g' "/home/monero/cake_wallet/$file"
  fi
done

echo "Done!"
