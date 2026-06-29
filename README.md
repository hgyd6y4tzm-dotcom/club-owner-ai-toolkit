# 俱乐部老板AI助手 — 技能包

一个开箱即用的 Claude Code 技能包，专为俱乐部/服务型业务老板设计。

## 这个技能包能做什么

把你和 AI 助手的沟通效率拉满，覆盖俱乐部老板的三个核心场景：

| 场景 | 做什么 | 举例 |
|------|--------|------|
| 内容创作 | 按你的风格写逐字稿/图文 | 给选题 → 出稿 → 修改 → 定稿 |
| 商业决策 | 算账、对比、给方案 | 定价/获客/扩张/客户跟进 |
| 信息管理 | 自动记录、分类、索引你的所有信息 | 聊天归档、收入追踪、客户跟进、选题库 |

## 30 秒安装

### 前提
- 已安装 [Claude Code](https://docs.anthropic.com/en/docs/claude-code/overview)（终端版 AI 编程助手）
- Windows / Mac / Linux 均可

### 步骤

**1. 下载本技能包**
```bash
git clone https://github.com/YOUR_USERNAME/club-owner-ai-toolkit.git
```
或直接下载 ZIP 解压到你的工作目录。

**2. 复制到你的项目**
```bash
cp CLAUDE.md ~/.claude/CLAUDE.md
cp -r memory/ ~/.claude/projects/你的项目名/memory/
```

**3. 打开 Claude Code，开始用**
```bash
claude
```

**4. 自定义（重要！）**
打开 CLAUDE.md 末尾的「自定义区」，填入你的信息：
- 你的名字/品牌名
- 你的内容风格关键词
- 你的核心业务线
- 你的主要获客平台
- 你的工作文件目录

## 目录结构

```
club-owner-ai-toolkit/
├── CLAUDE.md                          # AI 助手主配置（复制到 ~/.claude/）
├── README.md                          # 本文件
├── SKILL.md                           # 技能包说明
└── memory/                            # 领域知识库
    ├── MEMORY.md                      # 索引
    ├── content-script-format.md       # 逐字稿格式
    ├── content-tuwen-format.md        # 图文格式
    ├── content-direction.md           # 内容方向策略
    ├── content-writing-workflow.md    # 写作流程
    ├── platform-douyin-rules.md       # 抖音规则
    ├── platform-douyin-restriction.md # 抖音限流SOP
    ├── platform-offsite-rules.md      # 导流红线
    ├── platform-xhs-guide.md          # 小红书指南
    ├── business-club-model.md         # 俱乐部服务模型
    ├── business-sales-tiering.md      # 销售分层
    ├── business-customer-types.md     # 客户类型
    ├── business-decision-framework.md # 决策框架
    ├── business-voice-over-text.md    # 语音沟通
    ├── growth-account-strategy.md     # 账号策略
    ├── growth-ip-framework.md         # IP打造
    ├── growth-vlog-methodology.md     # Vlog方法
    ├── growth-content-essence.md      # 爆款本质
    ├── workflow-auto-memory.md        # 自动记忆
    └── workflow-daily-automation.md   # 每日自动化
```

## 常见问题

**Q: 我不做俱乐部，我是其他服务型业务，能用吗？**
A: 能。替换 memory 中的业务相关文件，保留内容创作和决策框架即可。

**Q: 我不用抖音，只做小红书/视频号？**
A: 删除不需要的平台文件，替换为你的平台规则。

**Q: 怎么让它更懂我的风格？**
A: 跟它多聊。AI 会自动学习你的偏好并存入 memory。你聊得越多，它越像你。

**Q: 我的客户数据安全吗？**
A: 所有数据存在你的本地电脑。CLAUDE.md 和 memory 文件不会上传到任何服务器。用 Claude Code 时，对话内容通过 Anthropic API 传输（可配置数据保留策略）。

## 贡献

这个技能包是开源的，基于真实俱乐部老板的实践经验提炼。

欢迎提 Issue / PR：
- 补充你的行业经验和方法论
- 优化现有框架
- 新增你验证过的模板

## 协议

MIT — 随便用、随便改、随便分发。注明出处即可。

---

🤖 基于真实俱乐部运营经验提炼 | 持续更新中
