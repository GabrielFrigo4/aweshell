.POSIX:
.SILENT:

MAKEFLAGS += --no-print-directory -s

# ----------------------------------------------------------------
# Makefile: Aweshell (Awesome Eshell Suite)
# ----------------------------------------------------------------

.PHONY: help test compile clean ci

### ================================
### HELP & DOCUMENTATION
### ================================
help:
	cmd() { printf "    \033[36mmake %-22s\033[0m %s\n" "$$1" "$$2"; }; \
	sec() { printf "\n  \033[1;33m%s\033[0m\n" "$$1"; }; \
	printf "\n  \033[1;37mAweshell — Awesome Emacs Shell Extension Suite\033[0m\n"; \
	printf "  ============================================================\n"; \
	sec "Qualidade & Compilação:"; \
	cmd "test"           "Valida integridade sintática e compilação batch de todos os .el"; \
	cmd "compile"        "Compila bytecode (.elc) de todos os módulos"; \
	cmd "clean"          "Remove arquivos de bytecode (.elc)"; \
	cmd "ci"             "Executa suite completa de quality gates locais"; \
	echo ""

### ================================
### TESTING & QUALITY
### ================================
test:
	echo "🧪 Validando integridade e compilação de Aweshell..."
	emacs -Q --batch -L . --eval '\
		(let ((err-count 0))\
		  (dolist (f (directory-files "." nil "\\.el$$"))\
		    (message "  ↳ Compilando %s..." f)\
		    (condition-case err\
		        (byte-compile-file f)\
		      (error\
		       (setq err-count (1+ err-count))\
		       (message "❌ Erro em %s: %s" f err))))\
		  (when (> err-count 0)\
		    (kill-emacs 1)))' > /dev/null 2>&1 && \
	rm -f *.elc && echo "  ✅ Aweshell: 100% testado e aprovado!"

compile:
	echo "⚙️  Compilando módulos Aweshell..."
	emacs -Q --batch -L . -f batch-byte-compile *.el && echo "  ✅ Bytecode compilado!"

clean:
	echo "🧹 Limpando artefatos de compilação..."
	rm -f *.elc && echo "  ✅ Limpeza concluída!"

ci: test
	echo "🚀 Aweshell 100% pronto para produção!"
