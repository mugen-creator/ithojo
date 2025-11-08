#!/bin/bash

# ファイル名を英語に変更
mv "履歴事項全部証明書.html" "registration-certificate.html" 2>/dev/null
mv "納税証明書.html" "tax-certificate.html" 2>/dev/null
mv "決算書.html" "financial-statements.html" 2>/dev/null
mv "gBizID.html" "gbizid.html" 2>/dev/null
mv "SECURITY-ACTION.html" "security-action.html" 2>/dev/null
mv "IT戦略マップ.html" "it-strategy-map.html" 2>/dev/null

echo "ファイル名を変更しました"

# index.htmlのリンクを更新
sed -i 's|href="履歴事項全部証明書.html"|href="registration-certificate.html"|g' index.html
sed -i 's|href="納税証明書.html"|href="tax-certificate.html"|g' index.html
sed -i 's|href="決算書.html"|href="financial-statements.html"|g' index.html
sed -i 's|href="gBizID.html"|href="gbizid.html"|g' index.html
sed -i 's|href="SECURITY-ACTION.html"|href="security-action.html"|g' index.html
sed -i 's|href="IT戦略マップ.html"|href="it-strategy-map.html"|g' index.html

echo "index.htmlを更新しました"

# 各HTMLファイル内のナビゲーションリンクを更新
for file in registration-certificate.html tax-certificate.html financial-statements.html gbizid.html security-action.html it-strategy-map.html; do
    if [ -f "$file" ]; then
        sed -i 's|href="履歴事項全部証明書.html"|href="registration-certificate.html"|g' "$file"
        sed -i 's|href="納税証明書.html"|href="tax-certificate.html"|g' "$file"
        sed -i 's|href="決算書.html"|href="financial-statements.html"|g' "$file"
        sed -i 's|href="gBizID.html"|href="gbizid.html"|g' "$file"
        sed -i 's|href="SECURITY-ACTION.html"|href="security-action.html"|g' "$file"
        sed -i 's|href="IT戦略マップ.html"|href="it-strategy-map.html"|g' "$file"
        echo "Updated links in $file"
    fi
done

echo "全てのリンクを更新しました"
