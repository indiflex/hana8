import { Navigate, useLocation, useNavigate } from 'react-router-dom';
import { Button } from './components/ui/button';

export default function NotFound() {
  const navigate = useNavigate();
  const location = useLocation();
  console.log('🚀 ~ location:', location.pathname);
  return (
    <>
      <h1 className='text-primary'>Page Not Found (404)</h1>
      <div className='flex gap-5'>
        <Button onClick={() => navigate('/')}>Go Home</Button>
        <Button onClick={() => navigate(-1)}>Go Back</Button>
        {location.pathname === '/xxx' && <Navigate to='/' />}
      </div>
    </>
  );
}
