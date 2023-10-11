import { Navigate, useAccess } from 'umi';
import {message} from "antd";

const withAuth = (Component) => ()=>{
    const { isLogin } = useAccess();
    if (isLogin) {
        return <Component />;
    } else{
        message.warning('请先登录');
        return <Navigate to="/user/login" />;
    }
}

export {withAuth};