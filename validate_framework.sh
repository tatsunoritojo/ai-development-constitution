#!/bin/bash
# AI Development Framework Validation Script v5.0
# Ensures constitutional compliance and framework integrity

echo "🏛️  AI Development Framework Validation"
echo "========================================="

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Counters
PASS_COUNT=0
WARN_COUNT=0
FAIL_COUNT=0

# Helper functions
pass_check() {
    echo -e "${GREEN}✅ $1${NC}"
    ((PASS_COUNT++))
}

warn_check() {
    echo -e "${YELLOW}⚠️  $1${NC}"
    ((WARN_COUNT++))
}

fail_check() {
    echo -e "${RED}❌ $1${NC}"
    ((FAIL_COUNT++))
}

info_check() {
    echo -e "${BLUE}ℹ️  $1${NC}"
}

echo ""
echo "🔍 Framework Structure Validation"
echo "--------------------------------"

# Check required framework files
REQUIRED_FILES=(
    "README.md"
    "AI_DEVELOPMENT_CONSTITUTION_V5.yaml"
    "PROJECT_ARCHITECTURE_TEMPLATE.yaml"
    "UNIVERSAL_DOCUMENTATION_FRAMEWORK.yaml"
    "CONSTITUTIONAL_INTEGRATION_SUMMARY.md"
    "QUICKSTART_GUIDE.md"
    "validate_framework.sh"
)

for file in "${REQUIRED_FILES[@]}"; do
    if [[ -f "./$file" ]]; then
        pass_check "$file exists"
    else
        fail_check "$file missing from framework"
    fi
done

echo ""
echo "📊 Constitutional Compliance Analysis"
echo "-----------------------------------"

# Check for constitutional violations in current directory
if command -v find &> /dev/null; then
    # Check file size limits (500 lines max)
    info_check "Checking file size constitutional limits..."
    LARGE_FILES=$(find . -name "*.js" -o -name "*.py" -o -name "*.java" -o -name "*.cpp" -o -name "*.cs" -o -name "*.php" -o -name "*.rb" -o -name "*.go" -o -name "*.rs" -o -name "*.swift" -o -name "*.kt" -o -name "*.scala" -o -name "*.ts" -o -name "*.tsx" -o -name "*.jsx" | xargs wc -l 2>/dev/null | awk '$1 > 500 {print $2 " (" $1 " lines)"}')
    
    if [[ -z "$LARGE_FILES" ]]; then
        pass_check "All source files under 500-line constitutional limit"
    else
        echo "$LARGE_FILES" | while read line; do
            fail_check "Constitutional violation: $line exceeds 500 lines"
        done
    fi
    
    # Check for non-English code patterns
    info_check "Checking English-only code discipline..."
    NON_ENGLISH_PATTERNS=$(find . -name "*.js" -o -name "*.py" -o -name "*.java" -o -name "*.cpp" -o -name "*.cs" -o -name "*.php" -o -name "*.rb" -o -name "*.go" -o -name "*.rs" -o -name "*.swift" -o -name "*.kt" -o -name "*.scala" -o -name "*.ts" -o -name "*.tsx" -o -name "*.jsx" | xargs grep -l "[\u3040-\u309F\u30A0-\u30FF\u4E00-\u9FAF]" 2>/dev/null)
    
    if [[ -z "$NON_ENGLISH_PATTERNS" ]]; then
        pass_check "English-only code discipline maintained"
    else
        echo "$NON_ENGLISH_PATTERNS" | while read file; do
            fail_check "Constitutional violation: Non-English characters in $file"
        done
    fi
else
    warn_check "find command not available - skipping code analysis"
fi

echo ""
echo "📚 Documentation System Validation"
echo "---------------------------------"

# Check documentation structure
if [[ -d "./docs" ]]; then
    pass_check "docs/ directory exists for active documentation"
else
    warn_check "docs/ directory missing - create for active documentation"
fi

if [[ -d "./archive" ]]; then
    pass_check "archive/ directory exists for historical documentation"
else
    info_check "archive/ directory not present (created when needed)"
fi

# Check README.md content requirements
if [[ -f "./README.md" ]]; then
    if grep -q "Single Source of Truth" "./README.md"; then
        pass_check "README.md contains documentation registry"
    else
        warn_check "README.md should contain 'Single Source of Truth' documentation registry"
    fi
    
    if grep -q "docs/" "./README.md"; then
        pass_check "README.md references documentation structure"
    else
        warn_check "README.md should reference docs/ structure"
    fi
else
    fail_check "README.md missing - required as entry point"
fi

echo ""
echo "🎯 Framework Integration Status"
echo "-----------------------------"

# Check if this is in a project (has package.json, requirements.txt, etc.)
PROJECT_INDICATORS=(
    "package.json"
    "requirements.txt"
    "Cargo.toml"
    "pom.xml"
    "composer.json"
    "Gemfile"
    "go.mod"
    "Pipfile"
    "pyproject.toml"
)

PROJECT_DETECTED=false
for indicator in "${PROJECT_INDICATORS[@]}"; do
    if [[ -f "./$indicator" ]] || [[ -f "../$indicator" ]]; then
        PROJECT_DETECTED=true
        break
    fi
done

if $PROJECT_DETECTED; then
    pass_check "Framework integrated into active project"
    info_check "AI agents can learn development philosophy from framework files"
else
    info_check "Framework in standalone directory - ready for project integration"
fi

echo ""
echo "🔗 Cross-Reference Validation"
echo "----------------------------"

# Check internal references in key documents
if [[ -f "./README.md" ]]; then
    # Check that all referenced files actually exist
    REFERENCED_FILES=$(grep -o '\[.*\](\.\/[^)]*\.md\|\.\/[^)]*\.yaml\|\.\/[^)]*\.sh)' "./README.md" | sed 's/.*(\.\///' | sed 's/).*//')
    
    if [[ ! -z "$REFERENCED_FILES" ]]; then
        echo "$REFERENCED_FILES" | while read ref_file; do
            if [[ -f "./$ref_file" ]]; then
                pass_check "Reference valid: $ref_file"
            else
                fail_check "Broken reference: $ref_file"
            fi
        done
    fi
fi

echo ""
echo "📈 Validation Summary"
echo "===================="

echo -e "${GREEN}✅ Passed: $PASS_COUNT${NC}"
echo -e "${YELLOW}⚠️  Warnings: $WARN_COUNT${NC}"
echo -e "${RED}❌ Failed: $FAIL_COUNT${NC}"

# Calculate overall health score
TOTAL_CHECKS=$((PASS_COUNT + WARN_COUNT + FAIL_COUNT))
if [[ $TOTAL_CHECKS -gt 0 ]]; then
    HEALTH_SCORE=$(((PASS_COUNT * 100) / TOTAL_CHECKS))
    echo ""
    echo "🏆 Framework Health Score: ${HEALTH_SCORE}%"
    
    if [[ $HEALTH_SCORE -ge 90 ]]; then
        echo -e "${GREEN}Excellent: Framework ready for production use${NC}"
    elif [[ $HEALTH_SCORE -ge 75 ]]; then
        echo -e "${YELLOW}Good: Minor improvements recommended${NC}"
    elif [[ $HEALTH_SCORE -ge 60 ]]; then
        echo -e "${YELLOW}Fair: Several issues need attention${NC}"
    else
        echo -e "${RED}Poor: Significant improvements required${NC}"
    fi
fi

echo ""
echo "🎯 Next Steps:"
if [[ $FAIL_COUNT -eq 0 ]]; then
    echo "• Framework validation successful!"
    echo "• Ready for AI agent learning and project development"
    echo "• Consider running this validation weekly for continuous compliance"
else
    echo "• Fix failed validations before proceeding"
    echo "• Ensure all required framework files are present"
    echo "• Apply constitutional principles to resolve violations"
fi

echo ""
echo "📚 For more information:"
echo "• Read QUICKSTART_GUIDE.md for immediate setup"
echo "• Review AI_DEVELOPMENT_CONSTITUTION_V5.yaml for principles"
echo "• Apply PROJECT_ARCHITECTURE_TEMPLATE.yaml for structure"

# Exit with appropriate code
if [[ $FAIL_COUNT -eq 0 ]]; then
    exit 0
else
    exit 1
fi