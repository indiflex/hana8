import { useRef } from 'react';
import { Route, Routes } from 'react-router-dom';
import Hello from './components/Hello';
import Home from './components/Home';
import ItemRoute from './components/ItemRoute';
import Items from './components/Items';
import My from './components/My';
import Posts from './components/Posts';
import Profile, { type ProfileHandler } from './components/Profile';
import { SessionProvider } from './hooks/SessionContext';
import Nav from './Nav';
import NotFound from './NotFound';

function App() {
  const profileHandlerRef = useRef<ProfileHandler>(null);

  return (
    <SessionProvider>
      <Nav />

      <div className='grid place-items-center h-screen mx-2'>
        <Routes>
          <Route path='/' element={<Home />} />
          <Route path='/my' element={<My />} />
          <Route
            path='/profile'
            element={<Profile ref={profileHandlerRef} />}
          />
          <Route path='/items' element={<Items />} />
          <Route path='/items/:id' element={<ItemRoute />} />
          <Route path='/posts' element={<Posts />} />
          <Route path='/hello' element={<Hello />} />
          <Route path='*' element={<NotFound />} />
        </Routes>
      </div>

      <a
        href='#!'
        onClick={(e) => {
          e.preventDefault();
          profileHandlerRef.current?.showLoginUser();
          console.log('xxx>>', profileHandlerRef.current?.xxx);
        }}
      >
        Show LoginUser
      </a>
    </SessionProvider>
  );
}

export default App;
