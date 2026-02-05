# DRS Executive Studio v3.26 PWA 🚀

**Sistema Executivo de Gestão de Processos Judiciais** - Progressive Web App instalável e 100% offline.

---

## 🎯 **Funcionalidades**

### ✅ **Gestão Completa de Processos**
- ✨ Importação via texto colado (detecção automática de NPUs)
- 📊 Upload de planilhas Excel (.xlsx, .xls)
- 🏷️ Classificação: RPV/PRECATÓRIO, ALVARÁ, NÃO MOVIMENTADO
- 🔢 Sistema de prioridades automático
- 📝 Backup/Restauração JSON

### 📊 **Dashboard Executivo**
- 📈 **Metas Semanais e Diárias** com progresso visual
- 🎯 **6 KPIs em tempo real**:
  - RPV/Precatórios
  - Alvarás
  - Não Movimentados
  - Tempo Médio de Processamento
  - Processos Pendentes
  - Carga Total
- 📉 **Gráficos por Unidade Judiciária** (Chart.js)
- 🔍 Filtros por unidade e status

### 💾 **PWA - Progressive Web App**
- 📱 **Instalável** como app nativo (Android/iOS/Desktop)
- ⚡ **100% Offline** após primeira carga
- 🔄 Cache inteligente com Service Worker
- 🎨 Ícones personalizados (192x192 e 512x512)
- 🌐 Funciona sem conexão à internet

### 🎨 **Interface Premium**
- 🎭 Design moderno com Tailwind CSS
- ✍️ Fonte Plus Jakarta Sans
- 🌈 Gradientes e animações suaves
- 📱 Responsivo (mobile/tablet/desktop)
- 🔘 Modal de listas filtradas clicável
- 📋 Botão "Copiar Lista" completa
- 💫 Efeitos glassmorphism

---

## 📦 **Arquivos do Projeto**

```
drs-studio/
├── index.html              # Aplicação principal
├── manifest.webmanifest    # Configuração PWA
├── service-worker.js       # Cache offline
├── icon-192.png           # Ícone 192x192 (gerar)
├── icon-512.png           # Ícone 512x512 (gerar)
├── icon-192.svg           # Ícone SVG 192
├── icon-512.svg           # Ícone SVG 512
├── icon-192.html          # Template para gerar PNG
├── icon-512.html          # Template para gerar PNG
└── README.md              # Este arquivo
```

---

## 🚀 **Publicar no GitHub Pages**

### **Opção 1: Via Interface Web (Mais Fácil)**

1. **Criar Repositório no GitHub**
   - Acesse: https://github.com/new
   - Nome: `drs-studio` (ou outro nome)
   - Visibilidade: **Public**
   - Clique em **"Create repository"**

2. **Fazer Upload dos Arquivos**
   - Na página do repositório, clique em **"Add file" → "Upload files"**
   - Arraste TODOS os arquivos do projeto (ou selecione):
     - `index.html`
     - `manifest.webmanifest`
     - `service-worker.js`
     - `icon-192.png`
     - `icon-512.png`
     - `README.md`
   - Clique em **"Commit changes"**

3. **Ativar GitHub Pages**
   - Vá em **"Settings"** (Configurações) do repositório
   - No menu lateral, clique em **"Pages"**
   - Em **"Source"**, selecione:
     - Branch: **`main`** (ou `master`)
     - Folder: **`/ (root)`**
   - Clique em **"Save"**

4. **Acessar o App Online**
   - Aguarde 1-2 minutos
   - Seu app estará em:
     ```
     https://SEU-USUARIO.github.io/drs-studio/
     ```
   - Exemplo: `https://joaosilva.github.io/drs-studio/`

---

### **Opção 2: Via Git (Linha de Comando)**

```bash
# 1. Inicializar repositório local
cd /caminho/para/drs-studio
git init

# 2. Adicionar arquivos
git add .
git commit -m "Primeira versão do DRS Studio PWA"

# 3. Conectar ao GitHub
git remote add origin https://github.com/SEU-USUARIO/drs-studio.git

# 4. Fazer push
git branch -M main
git push -u origin main

# 5. Ativar Pages via web
# Siga o passo 3 da Opção 1 (Settings → Pages)
```

---

## 🎨 **Gerar Ícones PNG (Obrigatório)**

Os arquivos `icon-192.png` e `icon-512.png` precisam ser gerados manualmente:

### **Método 1: Usando Ferramentas Online (Mais Fácil)**
1. Acesse: https://realfavicongenerator.net/
2. Faça upload do `icon-192.svg` ou `icon-512.svg`
3. Gere os ícones e baixe
4. Renomeie para `icon-192.png` e `icon-512.png`
5. Substitua os arquivos no repositório

### **Método 2: Screenshot Manual**
1. Abra `icon-192.html` no navegador
2. Redimensione a janela para 192x192 pixels
3. Pressione F12 → Console → Digite:
   ```javascript
   document.body.style.width = '192px';
   document.body.style.height = '192px';
   ```
4. Tire uma captura de tela (screenshot)
5. Salve como `icon-192.png`
6. Repita para `icon-512.html` com 512x512

### **Método 3: ImageMagick (Linha de Comando)**
```bash
convert icon-192.svg icon-192.png
convert icon-512.svg icon-512.png
```

---

## 📱 **Instalar como PWA**

### **Android/Chrome:**
1. Abra o app no navegador
2. Menu (⋮) → **"Instalar app"** ou **"Adicionar à tela inicial"**
3. Aceite a instalação

### **iOS/Safari:**
1. Abra o app no Safari
2. Botão **Compartilhar** (🔼)
3. **"Adicionar à Tela de Início"**

### **Desktop (Chrome/Edge):**
1. Abra o app
2. Ícone de **instalação** aparece na barra de endereço (➕)
3. Clique em **"Instalar"**

---

## 🔧 **Tecnologias Utilizadas**

- **Frontend:** HTML5, CSS3, JavaScript (ES6+)
- **Framework CSS:** Tailwind CSS (CDN)
- **Gráficos:** Chart.js
- **Planilhas:** SheetJS (XLSX)
- **Fontes:** Google Fonts (Plus Jakarta Sans)
- **PWA:** Service Worker API, Web App Manifest
- **Armazenamento:** LocalStorage

---

## 💾 **Armazenamento de Dados**

- **LocalStorage:** `drs_v26_copyall`
- **Estrutura de Dados:**
```javascript
{
  npu: "1234567-12.2024.8.17.0001",
  unidade: "1ª Vara Cível",
  status: "pendente" | "cumprido",
  data: "05/02/2026, 14:30:25",
  prioridade: 1,
  rpv: false,
  alvara: true,
  naomov: false
}
```

---

## 🔄 **Funcionalidades Offline**

O Service Worker cacheia:
- ✅ Interface completa (HTML/CSS/JS)
- ✅ Bibliotecas CDN (Tailwind, Chart.js, XLSX)
- ✅ Fontes Google (Plus Jakarta Sans)
- ✅ Ícones e assets
- ✅ Dados em LocalStorage

**Resultado:** App funciona 100% offline após primeira visita!

---

## 📊 **KPIs e Métricas**

### **Meta Semanal**
- Padrão: 125 processos
- Ajuste automático se carga < 125

### **Meta Diária**
- Cálculo: `Total de Processos ÷ 5 dias úteis`
- Mínimo: 25 processos/dia

### **Tempo Médio**
- Calculado com base em processos concluídos no dia
- Formato: minutos por processo (m/p)

---

## 🎯 **Próximos Passos Recomendados**

1. ✅ **Gerar ícones PNG** (obrigatório para instalação)
2. ✅ **Publicar no GitHub Pages**
3. 🔜 Adicionar autenticação de usuários
4. 🔜 Sincronização em nuvem (Firebase/Supabase)
5. 🔜 Notificações push para metas
6. 🔜 Relatórios PDF exportáveis
7. 🔜 Integração com APIs judiciais

---

## 🐛 **Solução de Problemas**

### **Service Worker não registra:**
- Verifique se está usando HTTPS ou localhost
- Limpe cache do navegador (Ctrl+Shift+Delete)
- Confira se `service-worker.js` está na raiz

### **Ícones não aparecem:**
- Gere os arquivos PNG corretamente
- Verifique se os nomes estão exatos: `icon-192.png` e `icon-512.png`
- Confirme que estão na raiz do projeto

### **App não funciona offline:**
- Aguarde 1-2 minutos após primeira visita
- Recarregue a página (F5) para ativar o SW
- Verifique no DevTools (F12) → Application → Service Workers

---

## 📝 **Licença**

Este projeto é de uso livre para fins educacionais e profissionais.

---

## 👨‍💻 **Suporte**

Para dúvidas sobre o projeto:
- 📧 Email: suporte@drsstudio.com.br (fictício)
- 📖 Documentação: https://github.com/SEU-USUARIO/drs-studio

---

## 🎉 **Versão: 3.26 PWA Edition**

**Desenvolvido com ⚡ para máxima produtividade jurídica!**

---

## 📌 **Checklist de Publicação**

- [ ] Gerar `icon-192.png` e `icon-512.png`
- [ ] Criar repositório no GitHub
- [ ] Fazer upload de todos os arquivos
- [ ] Ativar GitHub Pages (Settings → Pages)
- [ ] Testar URL pública
- [ ] Instalar como PWA no dispositivo
- [ ] Confirmar funcionamento offline
- [ ] Compartilhar com equipe! 🚀
