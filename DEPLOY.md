# 🚀 GUIA RÁPIDO DE PUBLICAÇÃO

## ⚡ Publicar em 5 Minutos

### 1️⃣ **Gerar Ícones PNG** (Obrigatório!)
```bash
# Abra no navegador:
- icon-192.html (tire screenshot 192x192)
- icon-512.html (tire screenshot 512x512)

# Ou use: https://realfavicongenerator.net/
```

### 2️⃣ **Criar Repositório GitHub**
```
https://github.com/new
Nome: drs-studio
Public ✅
```

### 3️⃣ **Upload de Arquivos**
Arraste para o GitHub:
- ✅ index.html
- ✅ manifest.webmanifest
- ✅ service-worker.js
- ✅ icon-192.png
- ✅ icon-512.png
- ✅ README.md

### 4️⃣ **Ativar GitHub Pages**
```
Settings → Pages
Source: main branch / (root)
Save → Aguarde 2 min
```

### 5️⃣ **Acessar App**
```
https://SEU-USUARIO.github.io/drs-studio/
```

---

## 📋 **Via Git (Alternativa)**

```bash
cd /caminho/drs-studio
git init
git add .
git commit -m "DRS Studio PWA v3.26"
git remote add origin https://github.com/SEU-USUARIO/drs-studio.git
git push -u origin main
```

Depois ative Pages no GitHub (passo 4).

---

## ✅ **Checklist Final**

- [ ] Ícones PNG gerados
- [ ] Repositório criado
- [ ] Arquivos enviados
- [ ] Pages ativado
- [ ] App testado online
- [ ] PWA instalado no celular
- [ ] Funciona offline
- [ ] Compartilhado! 🎉

---

## 🆘 **Problemas?**

**Página 404:**
- Aguarde 2-5 minutos
- Verifique: Settings → Pages → Source = main/(root)

**Ícones não aparecem:**
- Confirme que `icon-192.png` e `icon-512.png` existem
- Devem ser imagens PNG válidas (não texto)

**Não instala como PWA:**
- Gere os ícones PNG corretamente
- HTTPS é obrigatório (GitHub Pages já tem)
- Limpe cache: Ctrl+Shift+Delete

---

🎯 **Tudo pronto? Seu app estará online em minutos!**
