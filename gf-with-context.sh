#!/bin/bash
# Gemini Flow wrapper that auto-loads context files

load_context() {
    local context=""
    
    # Load GEMINI.md
    if [[ -f "GEMINI.md" ]]; then
        context+="=== GEMINI RULES ===\n$(cat GEMINI.md)\n\n"
    fi
    
    # Load CCFOREVER.md (renamed to GGFOREVER.md)
    if [[ -f "GGFOREVER.md" ]]; then
        context+="=== GG FOREVER INSTRUCTIONS ===\n$(cat GGFOREVER.md)\n\n"
    fi
    
    # Load doc-planner.md
    if [[ -f "agents/doc-planner.md" ]]; then
        context+="=== DOC PLANNER AGENT ===\n$(cat agents/doc-planner.md)\n\n"
    fi
    
    # Load microtask-breakdown.md
    if [[ -f "agents/microtask-breakdown.md" ]]; then
        context+="=== MICROTASK BREAKDOWN AGENT ===\n$(cat agents/microtask-breakdown.md)\n\n"
    fi
    
    echo -e "$context"
}

# Check command type and execute with context
case "$1" in
    "swarm")
        npx gemini-flow@alpha swarm "${@:2}" --gemini <<< "$(load_context)"
        ;;
    "hive-mind"|"hive")
        # hive-mind doesn't like stdin input, so don't use heredoc
        echo "🚀 Running Gemini Flow hive-mind with quantum processing..."
        if [[ "$2" == "spawn" ]]; then
            npx gemini-flow@alpha hive-mind spawn "${@:3}" --gemini --quantum
        else
            # Handle gf-hive case where args come after hive-mind
            npx gemini-flow@alpha hive-mind spawn "${@:2}" --gemini --quantum
        fi
        ;;
    *)
        if [[ $# -gt 0 ]]; then
            npx gemini-flow@alpha "$@" --gemini <<< "$(load_context)"
        else
            npx gemini-flow@alpha --help
        fi
        ;;
esac