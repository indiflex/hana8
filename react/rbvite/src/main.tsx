import { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';
import { BrowserRouter } from 'react-router-dom';
import App from './App.tsx';
import { CounterProvider } from './hooks/CounterContext.tsx';
import './index.css';

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <CounterProvider>
      <BrowserRouter>
        <App />
      </BrowserRouter>
    </CounterProvider>
  </StrictMode>
);
