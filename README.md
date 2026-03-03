# Rime_Taigi_POJ

這是一個基於 Rime (中州韻) 框架開發的台語白話字 (POJ) 輸入方案。本專案整合了經人工整理的字典，並持續開發具備功能性的詞典，旨在提供一個具備教學意義與高效率的台語輸入工具。

A Rime-based input schema for Taiwanese Pe̍h-ōe-jī (POJ). This project integrates curated dictionaries and functional lexicons to provide an educational and efficient input tool for the Taiwanese language.

---

## 核心特色 Core Features

### 1. 以 POJ 為核心的輸出機制 (POJ-Centric Output)
* **POJ 優先**：主要輸出媒介為白話字 (POJ)，而非傳統類似 Macro Language 的漢字。
* **漢羅支援**：雖支援漢羅輸出，但其並非主要功能，專注於純羅馬字書寫。
* **POJ First**: The primary output is Pe̍h-ōe-jī (POJ) rather than Han characters or macro-language-like implementations.
* **Han-Lo Support**: While Han-Lo output is supported, the focus remains on pure Romanization.

### 2. 教學型輸入體驗 (Educational Input Experience)
* **雙重提示**：輸入過程中會同步顯示編碼 (POJ 拼音) 與對應漢字，協助使用者邊打邊記，降低學習門檻。
* **記憶強化**：透過視覺回饋，將輸入行為轉化為對 POJ 拼寫與語義的深度記憶。
* **Dual Display**: Displays both POJ spelling and corresponding Han characters during input to assist learners.
* **Memory Reinforcement**: Uses visual feedback to help users internalize POJ orthography and semantics.

### 3. 強化的選字邏輯 (Enhanced Selection Logic)
* **多樣化輸入**：完整支援全拼、簡拼以及聲調加強選字。
* **模糊拼音 (Fuzzy Pinyin)**：相較於信望愛等系統，本方案的拼音邏輯較為模糊且具備彈性，有利於不同口音或快速輸入。
* **Versatile Input**: Full support for full-spelling, initials-only (Jianpin), and tone-assisted selection.
* **Fuzzy Pinyin**: Offers more flexible pinyin logic compared to traditional systems like FHL, accommodating various accents and rapid typing.

---

## 功能對比 Functional Comparison

| 功能項目 (Feature) | 本專案 (This Project) | 信望愛/傳統系統 (FHL/Traditional) | 一般漢字輸入法 (Standard Han IME) |
| :--- | :--- | :--- | :--- |
| **主要輸出 (Primary Output)** | **白話字 (POJ)** | POJ / 漢字 | 漢字 |
| **拼音邏輯 (Pinyin Logic)** | **模糊與容錯 (Fuzzy)** | 嚴謹固定 (Strict) | 固定 (Fixed) |
| **教學模式 (Edu Mode)** | **顯示編碼與漢字對照** | 較少 (Limited) | 無 (None) |
| **詞庫更新 (Lexicon)** | 開放且持續收錄 | 較固定 | 視廠商而定 |

---

## 安裝說明 Installation

1. 下載本倉庫的所有 `.yaml` 與 `.dict.yaml` 檔案。
2. 將檔案放入 Rime 的用戶資料夾 (User Data)：
   - Windows: `%AppData%\Rime`
   - macOS: `~/Library/Rime`
   - Linux: `~/.config/ibus/rime`
3. 在 Rime 選單中點擊「重新部署」(Deploy)。
4. 切換至本輸入方案即可使用。

1. Download all `.yaml` and `.dict.yaml` files.
2. Place them in your Rime User Data folder.
3. Click "Deploy" in the Rime menu.
4. Select this schema to start.

---

## POJ 輸入法快速上手指南 (Methods)

本輸入法採用「**先打拼音、後加調號**」的邏輯，就像打英文一樣簡單！

### 1. 基本打法
直接輸入拼音字母，隨後接著 **數字 (1-9)** 定調。
* **範例**：想打「台灣」，輸入 `tai5oan5`。
* **效果**：編輯區即時顯示 `tâi oân`，候選欄出現對應字供選擇。

### 2. 聲調對應（1-9 數字鍵）

| 數字 | 1 | 2 | 3 | 4 | 5 | 7 | 8 | 9 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **標誌** | a | á | à | a | â | ā | a̍ | ă |

---

### 3. 三大核心按鍵
* **【空格 Space】**：**選字推送**。例如 `tai5oan5` → 出現「1.tâi-oân/2. 台灣」，透過方向鍵+空格推送。
* **【輸入 Enter】**：**直接輸出羅馬字**。例如 `tai5oan5` + `Enter` → 輸出 `tâi oân` (**不需詞典有詞**)。
* **【Shift + 數字】**：**強制選字**。若要選第 2 個候選字，按 `Shift + 2`（避免與聲調數字衝突）。

### 4. 進階技巧
* **翻頁**：使用鍵盤上的 **`[`** 與 **`]`** (中括號) 或 **`Tab`**。
* **簡拼**：支援聲母縮寫。例如輸入 `t o` 也能找到「台灣」，輸入愈完整，過濾愈精確。
* **刪除修正**：若打錯調號，可按 **左右方向鍵** 回頭修改特定音節，不必整串刪除。

---

**💡 一句話口訣：**
> **「拼音連著數字打，要字按空格，要羅馬字按 Enter！」**

---

## 授權條款與致謝 License & Credits

本專案採用 **MIT License** 授權。

### 開源致謝與聲明 (Acknowledgements)
本專案為衍生作品，主架構與功能參考並修改自多個現有 Rime 方案。
* **架構參考**：參考自多位多語種開發者的 Rime 基礎配置，自行編寫而成。
* **資料來源**：詞庫參考並整合了信望愛台語文資料及多方公開字典。
* **修改說明**：本版本已針對主架構進行深度調整，並發生顯著的功能性變化與優化。

This project is a derivative work under the MIT License.
* **Architecture**: Based on various multilingual Rime configurations with significant custom modifications.
* **Data Sources**: Integrated from FHL Taiwanese data and various public dictionaries.

---

## 未來展望 Roadmap
- [ ] 持續擴充功能性詞典 (Expand functional lexicons).
- [ ] 優化模糊輸入的權重 (Optimize fuzzy input weighting).
