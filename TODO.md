# 🗺️ Roadmap & Backlog — Aweshell

> Planejamento estratégico, status operacional e visão de futuro para o **Aweshell** (Awesome Eshell Suite).

---

## 📊 Status do Projeto

| Área                             |   Status   | Cobertura / Estado                                    |
| :------------------------------- | :--------: | :---------------------------------------------------- |
| **🐚 Eshell Extensions**         | 🟢 Estável | Histórico, cd inteligente, did-you-mean e aliases     |
| **🎨 Temas Visuais**             | 🟢 Estável | Suporte a cores ANSI e prompts customizáveis          |
| **🧪 Byte-Compilation**          |  🟢 100%   | 100% dos módulos compilando sem erros via `make test` |
| **🛡️ Invariante Out-of-the-Box** |  🟢 100%   | Permissões canônicas (0755/0644), githooks e CI       |

---

## 🎯 Grandes Épicos & Backlog

### 1. ⚡ Performance & Ergonomia

- [x] Compilação limpa sem erros em modo batch (`make test`).
- [ ] Otimização do buffer de histórico para navegação ultrarrápida.
- [ ] Integração aprimorada com `pcomplete` e `cape` para auto-completar inteligente.

---

> [!TIP]
> Para diretrizes de desenvolvimento, consulte [CONTRIBUTING.md](CONTRIBUTING.md) e [AGENTS.md](AGENTS.md).
