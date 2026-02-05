# 🧪 TESTAR LOCALMENTE

## Opção 1: Python (Mais Simples)

### Python 3.x (Recomendado)
```bash
cd /caminho/drs-studio
python -m http.server 8080
```

### Python 2.x
```bash
cd /caminho/drs-studio
python -m SimpleHTTPServer 8080
```

**Acesse:** http://localhost:8080

---

## Opção 2: Node.js

```bash
npx http-server -p 8080
```

**Acesse:** http://localhost:8080

---

## Opção 3: PHP

```bash
php -S localhost:8080
```

**Acesse:** http://localhost:8080

---

## Opção 4: VS Code (Live Server)

1. Instale extensão: **Live Server**
2. Clique direito em `index.html`
3. **"Open with Live Server"**

---

## Opção 5: Simplesmente Abrir

Clique duplo em `index.html` (funciona, mas sem HTTPS = sem Service Worker)

---

## ✅ Testar Funcionalidades

### Service Worker:
1. Abra DevTools (F12)
2. Application → Service Workers
3. Verifique status: **Activated and running**

### Cache Offline:
1. Carregue o app
2. Application → Cache Storage
3. Veja arquivos cacheados
4. Desconecte da internet (modo avião)
5. Recarregue (F5) → Deve funcionar!

### PWA Install:
1. Navegue até o app
2. Procure ícone de instalação na barra
3. Ou: Settings → Install app

---

## 🔧 Debug

### Service Worker não registra:
```javascript
// Console (F12):
navigator.serviceWorker.getRegistrations().then(regs => {
  regs.forEach(reg => console.log(reg));
});
```

### Limpar cache:
```javascript
// Console (F12):
caches.keys().then(keys => {
  keys.forEach(key => caches.delete(key));
});
```

### Desregistrar SW:
```javascript
// Console (F12):
navigator.serviceWorker.getRegistrations().then(regs => {
  regs.forEach(reg => reg.unregister());
});
```

---

## 📝 Notas

- **HTTPS é obrigatório** para Service Workers (exceto localhost)
- GitHub Pages já fornece HTTPS automaticamente
- Para teste local, use `localhost` ou `127.0.0.1`
- Não use `file://` (não funciona com SW)

---

🎯 **Pronto para testar? Execute um servidor local!**
