# 🚀 Turbo-Flow Gemini Development Environment

**Complete DevPod workspace with 600+ AI agents, SPARC methodology, and automatic context loading**

[![DevPod](https://img.shields.io/badge/DevPod-Ready-blue?style=flat-square)](https://devpod.sh) [![Gemini Flow](https://img.shields.io/badge/Gemini%20Flow-SPARC-purple?style=flat-square)](https://github.com/clduab11/gemini-flow) [![Agents](https://img.shields.io/badge/Agents-600+-green?style=flat-square)](https://github.com/ChrisRoyse/610ClaudeSubagents)

---

## ⚡ Quick Start

```bash
# 1. Install DevPod
brew install loft-sh/devpod/devpod  # macOS
# Windows: choco install devpod
# Linux: curl -L -o devpod "https://github.com/loft-sh/devpod/releases/latest/download/devpod-linux-amd64" && sudo install devpod /usr/local/bin

# 2. Launch workspace
devpod up https://github.com/marcuspat/turbo-flow-gemini --ide vscode
```

That's it! You now have a cloud development environment ready to use with quantum-enhanced Gemini processing.

---

## 🔧 The Magic: Automatic Context Loading

After setup, use these **enhanced commands** that automatically load context files:

### 🎯 **Main Commands**
```bash
gf-swarm "build a tic-tac-toe game"    # Swarm with auto-loaded context
gf-hive "create a REST API"            # Hive-mind with auto-loaded context  
gf "memory stats"                      # Any Gemini Flow command with context
dsp                                    # gemini --dangerously-skip-permissions
```

### 🤖 **What Gets Auto-Loaded**
- **GEMINI.md** - Development rules and patterns
- **doc-planner.md** - Planning agent (SPARC methodology)
- **microtask-breakdown.md** - Task decomposition agent
- **Agent Library** - Info about 600+ available agents

### 🔄 **Before vs After**
```bash
# ❌ OLD WAY
(cat GEMINI.md && cat agents/doc-planner.md && cat agents/microtask-breakdown.md) | npx gemini-flow@alpha swarm "build game" --gemini

# ✅ NEW WAY
gf-swarm "build game"
```

---

## 🎯 Usage Examples

```bash
# 🎮 Game development with quantum processing
gf-swarm "build a multiplayer tic-tac-toe with real-time updates and quantum state management"

# 🌐 Web development  
gf-hive "create a full-stack blog with authentication and admin panel"

# 🔍 Analysis tasks with Byzantine consensus
gf "analyze this codebase and suggest improvements using 66 agents"

# 📊 Agent discovery
gf-swarm "First discover relevant agents with 'find agents/ -name \"*game*\"' then build a space invaders game"
```

---

## 🌟 What's Included

### 🔥 **Core Features**
- **600+ AI Agents** - From [610ClaudeSubagents](https://github.com/ChrisRoyse/610ClaudeSubagents) + custom additions
- **SPARC Methodology** - Systematic development workflow
- **Automatic Context Loading** - No more manual file piping
- **Gemini Flow Integration** - Advanced AI orchestration with quantum processing
- **Byzantine Consensus** - 66 agents with fault tolerance
- **SQLite Quantum Engine** - 396,610 operations per second
- **Playwright Integration** - Visual verification for UI work
- **Advanced Monitoring** - Usage tracking with Gemini Monitor

### 🛠️ **Development Tools**
- **Gemini Code CLI** - Quantum-enhanced AI development tools
- **Docker-in-Docker** - Container development support
- **Node.js & TypeScript** - Modern JavaScript development
- **Playwright** - Automated testing and screenshots
- **tmux Workspace** - 4-window terminal setup

---

## 🚀 Setup Options

### 🎯 **Option 1: Standalone Workspace (Recommended)**
```bash
devpod up https://github.com/marcuspat/turbo-flow-gemini --ide vscode
```
Perfect for new projects or dedicated Gemini development.

### 🔄 **Option 2: Add to Existing Project**
```bash
# Clone configuration
git clone https://github.com/marcuspat/turbo-flow-gemini gemini-config

# Copy to your project
cp -r gemini-config/.devcontainer ./
cp -r gemini-config/devpods ./

# Launch
devpod up . --ide vscode
```

---

## 🌍 Cloud Provider Setup

Choose your preferred cloud provider:

### 🌊 **DigitalOcean (Recommended)**
```bash
devpod provider add digitalocean
devpod provider use digitalocean
devpod provider update digitalocean --option DIGITALOCEAN_ACCESS_TOKEN=your_token
devpod provider update digitalocean --option DROPLET_SIZE=s-4vcpu-8gb  # $48/month
```

### ☁️ **AWS**
```bash
devpod provider add aws
devpod provider use aws
devpod provider update aws --option AWS_INSTANCE_TYPE=t3.medium  # $30/month
```

### 🔵 **Azure** | 🌥️ **GCP** | 🏢 **Rackspace** | 🖥️ **Local Docker**
See [full provider setup guide](#provider-configuration) below.

---

## 🖥️ What Happens After Setup

### 🔄 **Automatic Installation**
- Installs Gemini Code, Gemini Flow, and 600+ agents
- Sets up tmux workspace with 4 windows
- Configures automatic context loading
- Installs development tools (Playwright, TypeScript, etc.)
- Initializes quantum processing engine

### 🖥️ **tmux Workspace**
- **Window 0**: Primary Gemini workspace
- **Window 1**: Secondary Gemini workspace
- **Window 2**: Gemini usage monitor
- **Window 3**: System monitor (htop)

Access with: `tmux attach -t workspace`

---

## 🎯 Complete Prompting Examples

### 🌟 **Master Pattern**
Always include this for maximum effectiveness:
```
"Identify all subagents that could be useful for this task and utilize the gemini-flow hivemind to maximize your ability to accomplish the task."
```

### 🚀 **Full Project Development**
```
"I need to build a REST API for a todo application. Look in agents/ and:
1. Identify all useful subagents for this task
2. Create a complete development plan with visualizations
3. Utilize gemini-flow hivemind to maximize our ability
4. Chain agents for planning, implementation, testing, deployment
5. Use Byzantine consensus for critical decisions"
```

### 🏗️ **Infrastructure Project**
```
"Research using Kubernetes to deploy LLM services. Put output in research/ folder.
- Draw from YouTube transcripts, GitHub repos, blog posts
- Spawn 66 agents to work concurrently with quantum processing
- Keep iterating until clear implementation path exists"
```

---

## 📁 File Structure

After setup:
```
/workspaces/turbo-flow-gemini/
├── 🤖 agents/              # 600+ AI agents
├── 📋 GEMINI.md            # Development rules
├── 📋 FEEDGEMINI.md        # Streamlined instructions
├── ⚡ gemini-flow          # SPARC workflow tools
├── 🔧 gf-with-context.sh   # Context loading wrapper
├── 🧠 quantum/             # Quantum processing engine
├── 🔗 neural/              # Neural patterns
└── 📁 [your project files]
```

---

## 🎛️ Management Commands

```bash
# Create/delete workspace
devpod up https://github.com/marcuspat/turbo-flow-gemini --ide vscode
devpod delete turbo-flow-gemini --force

# Start/stop (saves money)
devpod stop turbo-flow-gemini      # Stop billing
devpod up turbo-flow-gemini --ide vscode  # Resume

# List workspaces
devpod list
```

---

## 🔧 Troubleshooting

### 🔐 **Permission Issues**
```bash
sudo chown -R $(whoami):staff ~/.devpod && \
find ~/.devpod -type d -exec chmod 755 {} \; && \
find ~/.devpod -name "*provider*" -type f -exec chmod +x {} \;
```

### 🔗 **Connection Issues**
```bash
killall "Code"  # Close VSCode
devpod up turbo-flow-gemini --ide vscode  # Retry
```

### ✅ **Verify Installation**
```bash
echo "Agents: $(ls -1 /workspaces/turbo-flow-gemini/agents/*.md 2>/dev/null | wc -l)"
echo "Gemini-code: $(which gemini && echo '✓' || echo '✗')"
echo "Gemini-monitor: $(which gemini-monitor && echo '✓' || echo '✗')"
```

---

## 📚 Resources

- [DevPod Documentation](https://devpod.sh/docs)
- [Gemini Flow SPARC](https://github.com/clduab11/gemini-flow) by Clduab11
- [610ClaudeSubagents](https://github.com/ChrisRoyse/610ClaudeSubagents) by Christopher Royse
- [Quantum Processing Guide](./docs/quantum-processing.md)

---

## 📦 Detailed Provider Configuration

<details>
<summary>Click to expand full provider setup instructions</summary>

### 🌊 **DigitalOcean Provider**
1. Sign up at [DigitalOcean](https://www.digitalocean.com/)
2. Generate API token with read/write permissions
3. Configure:
```bash
devpod provider add digitalocean
devpod provider use digitalocean
devpod provider update digitalocean --option DIGITALOCEAN_ACCESS_TOKEN=your_token
devpod provider update digitalocean --option DROPLET_SIZE=s-4vcpu-8gb
```

### ☁️ **AWS Provider**
```bash
pip install awscli
aws configure
devpod provider add aws
devpod provider use aws
devpod provider update aws --option AWS_INSTANCE_TYPE=t3.medium
devpod provider update aws --option AWS_REGION=us-east-1
```

### 🔵 **Azure Provider**
```bash
brew install azure-cli  # macOS
az login
devpod provider add azure
devpod provider use azure
devpod provider update azure --option AZURE_VM_SIZE=Standard_B2s
devpod provider update azure --option AZURE_LOCATION=eastus
```

### 🌥️ **Google Cloud Provider**
```bash
curl https://sdk.cloud.google.com | bash
gcloud auth login
devpod provider add gcp
devpod provider use gcp
devpod provider update gcp --option GOOGLE_PROJECT_ID=your-project
devpod provider update gcp --option GOOGLE_MACHINE_TYPE=e2-medium
```

### 🖥️ **Local Docker Provider**
```bash
devpod provider add docker
devpod provider use docker
# No additional configuration needed
```

</details>

---

🎯 **Ready to supercharge your development with quantum-enhanced 600+ AI agents?**

```bash
devpod up https://github.com/marcuspat/turbo-flow-gemini --ide vscode
```