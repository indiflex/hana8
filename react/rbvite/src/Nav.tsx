import { Link, NavLink } from 'react-router-dom';
import { useSession } from './hooks/SessionContext';
import { cn } from './lib/utils';

export default function Nav() {
  const {
    session: { loginUser },
  } = useSession();

  return (
    <nav className='flex justify-between m-5'>
      <ul className='flex gap-5'>
        <li>
          <NavLink
            to={'/'}
            className={({ isActive }) => cn({ 'text-blue-500': isActive })}
          >
            Home
          </NavLink>
        </li>
        <li>
          <NavLink to={'/my'}>My</NavLink>
        </li>
        <li>
          <NavLink to={'/profile'} replace>
            Profile
          </NavLink>
        </li>
        <li>
          <NavLink to={'/items'}>Items</NavLink>
        </li>
        <li>
          <NavLink to={'/hello'}>Hello</NavLink>
        </li>
        <li>
          <Link to={'/posts'}>Posts</Link>
        </li>
      </ul>

      {loginUser?.name ? (
        <small>{loginUser?.name}</small>
      ) : (
        <Link to={'/login'}>Login</Link>
      )}
    </nav>
  );
}
