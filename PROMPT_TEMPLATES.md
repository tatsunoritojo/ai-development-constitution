# AI Development Framework - Prompt Templates
## Ready-to-Use Prompts for Efficient Development

---

## 📋 Quick Reference

| Situation | Template | Use When |
|-----------|----------|----------|
| **New Project** | [P1-NEW](#p1-new-project-initialization) | Starting from scratch |
| **Add Feature** | [P2-FEATURE](#p2-feature-development) | Adding new functionality |
| **Fix Bug** | [P3-BUG](#p3-bug-fixing) | Emergency problem solving |
| **Continue Work** | [P4-CONTINUE](#p4-continue-development) | Resuming previous session |
| **Optimize Code** | [P5-OPTIMIZE](#p5-code-optimization) | Performance/quality improvement |
| **Review Code** | [P6-REVIEW](#p6-code-review) | Quality assessment |

---

## P1-NEW: Project Initialization
**🎯 Use When**: Starting a completely new project from scratch
**⏱️ Expected Time**: AI will spend 5-10 minutes on setup

### Template
```
.claude/AI_DEVELOPMENT_CONSTITUTION.yamlを読み込んで憲法原則を適用し、以下の新規プロジェクトを開始してください：

【プロジェクト情報】
- 名前: "[PROJECT_NAME]"
- 目的: "[ONE_SENTENCE_PURPOSE]"
- 主要機能: [FEATURE1, FEATURE2, FEATURE3]
- 技術スタック: [TECH_STACK]
- 品質段階: [Emergency/Systematic/Production]

【実行指示】
.claude/PROJECT_TEMPLATE.yamlを埋めて、憲法原則（500行制限、英語のみ、単一責任）に従ってアーキテクチャ設計から開始してください。
```

### Fill-in Example
```
.claude/AI_DEVELOPMENT_CONSTITUTION.yamlを読み込んで憲法原則を適用し、以下の新規プロジェクトを開始してください：

【プロジェクト情報】
- 名前: "Task Management App"
- 目的: "個人向けのシンプルなタスク管理システム"
- 主要機能: タスク作成、進捗管理、期限通知、カテゴリ分類
- 技術スタック: React, Node.js, SQLite
- 品質段階: Systematic

【実行指示】
.claude/PROJECT_TEMPLATE.yamlを埋めて、憲法原則（500行制限、英語のみ、単一責任）に従ってアーキテクチャ設計から開始してください。
```

---

## P2-FEATURE: Feature Development
**🎯 Use When**: Adding new features to existing project
**⏱️ Expected Time**: Varies by complexity (30min-3hours)

### Template
```
【憲法確認】憲法原則（英語のみ、500行制限、単一責任）を適用して開発します。

【機能仕様】
- 機能名: "[FEATURE_NAME]"
- ユーザーストーリー: "[USER_STORY]"
- 技術要件: [TECHNICAL_REQUIREMENTS]
- 複雑度: [Low/Medium/High]
- 品質段階: [Emergency/Systematic/Production]

【開発指示】
既存アーキテクチャと整合性を保ちながら、上記機能を実装してください。ファイル分割が必要な場合は400行で分割してください。
```

### Fill-in Example
```
【憲法確認】憲法原則（英語のみ、500行制限、単一責任）を適用して開発します。

【機能仕様】
- 機能名: "タスク検索機能"
- ユーザーストーリー: "ユーザーがキーワードでタスクを素早く検索できる"
- 技術要件: 部分一致検索、カテゴリフィルター、リアルタイム結果表示
- 複雑度: Medium
- 品質段階: Systematic

【開発指示】
既存アーキテクチャと整合性を保ちながら、上記機能を実装してください。ファイル分割が必要な場合は400行で分割してください。
```

---

## P3-BUG: Bug Fixing
**🎯 Use When**: Critical issues need immediate resolution
**⏱️ Expected Time**: 15-60 minutes depending on severity

### Template
```
【緊急対応】憲法原則下で以下の問題を最速で解決してください：

【問題詳細】
- 症状: "[SYMPTOMS]"
- 再現手順: [REPRODUCTION_STEPS]
- 影響範囲: "[IMPACT_SCOPE]"
- 緊急度: [Critical/High/Medium/Low]

【制約】
- 品質段階: Emergency（迅速対応優先）
- 最小限の変更で解決
- 技術的負債は記録し、後の改善フェーズで対処

【実行】
問題を特定し、最短経路で修正してください。
```

### Fill-in Example
```
【緊急対応】憲法原則下で以下の問題を最速で解決してください：

【問題詳細】
- 症状: "タスク保存時にアプリケーションがクラッシュする"
- 再現手順: 1.新規タスク作成 2.長いタイトル（50文字以上）入力 3.保存ボタンクリック
- 影響範囲: "すべてのユーザーの新規タスク作成機能"
- 緊急度: Critical

【制約】
- 品質段階: Emergency（迅速対応優先）
- 最小限の変更で解決
- 技術的負債は記録し、後の改善フェーズで対処

【実行】
問題を特定し、最短経路で修正してください。
```

---

## P4-CONTINUE: Continue Development
**🎯 Use When**: Resuming work from previous session
**⏱️ Expected Time**: Variable, depends on remaining work

### Template
```
【セッション継続】前回のセッションから開発を継続します。

【現在の状況】
- 完了済み: [COMPLETED_COMPONENTS]
- 進行中: "[CURRENT_TASK]"
- 技術的負債: [KNOWN_DEBT]
- 品質段階: [Emergency/Systematic/Production]

【今回の作業】
"[TODAY_TASK]"

【制約】
- 憲法原則維持（500行制限、英語のみ、単一責任）
- 既存アーキテクチャとの整合性
- [ADDITIONAL_CONSTRAINTS]

【実行】
現在の状況を把握し、今回の作業を進めてください。
```

### Fill-in Example
```
【セッション継続】前回のセッションから開発を継続します。

【現在の状況】
- 完了済み: タスク作成機能、基本UI、データベース設計
- 進行中: "タスク編集機能の実装"
- 技術的負債: フロントエンドの状態管理改善が必要
- 品質段階: Systematic

【今回の作業】
"タスク削除機能とカテゴリ管理機能の実装"

【制約】
- 憲法原則維持（500行制限、英語のみ、単一責任）
- 既存アーキテクチャとの整合性
- UIの一貫性を保つ

【実行】
現在の状況を把握し、今回の作業を進めてください。
```

---

## P5-OPTIMIZE: Code Optimization
**🎯 Use When**: Improving performance, refactoring, or code quality
**⏱️ Expected Time**: 1-3 hours depending on scope

### Template
```
【コード最適化】憲法原則に従って以下の最適化を実行してください：

【最適化対象】
- コンポーネント: "[TARGET_COMPONENT]"
- 問題: "[PERFORMANCE_ISSUES]"
- 目標: "[OPTIMIZATION_GOALS]"
- 品質段階: [Systematic/Production]

【最適化指針】
- パフォーマンス向上
- コードの可読性改善
- アーキテクチャの整合性確保
- 憲法原則の厳格な遵守

【制約】
- 既存機能の動作保証
- テストカバレッジの維持
- ファイル分割ルールの遵守

【実行】
段階的に最適化を進め、各段階で検証してください。
```

### Fill-in Example
```
【コード最適化】憲法原則に従って以下の最適化を実行してください：

【最適化対象】
- コンポーネント: "TaskList.jsx"
- 問題: "大量のタスク表示時にレンダリングが遅い"
- 目標: "1000件のタスクでも2秒以内の表示"
- 品質段階: Production

【最適化指針】
- パフォーマンス向上
- コードの可読性改善
- アーキテクチャの整合性確保
- 憲法原則の厳格な遵守

【制約】
- 既存機能の動作保証
- テストカバレッジの維持
- ファイル分割ルールの遵守

【実行】
段階的に最適化を進め、各段階で検証してください。
```

---

## P6-REVIEW: Code Review
**🎯 Use When**: Quality assessment and improvement recommendations
**⏱️ Expected Time**: 30-60 minutes

### Template
```
【コードレビュー】憲法原則に基づいて以下のコードをレビューしてください：

【レビュー対象】
- ファイル/コンポーネント: "[TARGET_FILES]"
- レビューフォーカス: "[REVIEW_FOCUS]"
- 品質要件: [Emergency/Systematic/Production]

【評価項目】
- 憲法原則遵守（英語のみ、500行制限、単一責任）
- アーキテクチャ整合性
- パフォーマンス
- セキュリティ
- 可読性・保守性

【出力要求】
- 問題点の特定と優先度
- 具体的な改善提案
- 憲法原則違反の指摘
- 総合評価スコア

【実行】
体系的にレビューし、建設的なフィードバックを提供してください。
```

### Fill-in Example
```
【コードレビュー】憲法原則に基づいて以下のコードをレビューしてください：

【レビュー対象】
- ファイル/コンポーネント: "src/components/TaskManager.jsx, src/utils/taskHelpers.js"
- レビューフォーカス: "コード品質とパフォーマンス"
- 品質要件: Production

【評価項目】
- 憲法原則遵守（英語のみ、500行制限、単一責任）
- アーキテクチャ整合性
- パフォーマンス
- セキュリティ
- 可読性・保守性

【出力要求】
- 問題点の特定と優先度
- 具体的な改善提案
- 憲法原則違反の指摘
- 総合評価スコア

【実行】
体系的にレビューし、建設的なフィードバックを提供してください。
```

---

## 💡 Usage Tips

### Before Using Any Prompt
1. **Make sure AI can access the framework files** in your project
2. **Choose the right quality stage**: Emergency (fast), Systematic (balanced), Production (thorough)
3. **Fill in ALL bracketed placeholders** with specific information

### Prompt Customization
- **Add project-specific constraints** in the 【制約】 section
- **Adjust quality stage** based on urgency and requirements
- **Modify technical requirements** to match your stack

### Expected AI Behavior
- **Constitution First**: AI will always read the constitution file first
- **Systematic Approach**: AI will break down complex tasks into steps
- **Quality Awareness**: AI will respect the specified quality stage
- **Constraint Compliance**: AI will enforce file size limits and English-only code

### Troubleshooting
- **If AI skips constitution**: Explicitly remind it to read .claude/AI_DEVELOPMENT_CONSTITUTION.yaml first
- **If quality is inconsistent**: Double-check the quality stage specification
- **If architecture drifts**: Use P6-REVIEW to assess and realign

---

**Remember**: Always start with constitutional principle loading for consistent, high-quality results!