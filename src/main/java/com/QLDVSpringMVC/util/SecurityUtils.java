package com.QLDVSpringMVC.util;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import com.QLDVSpringMVC.dto.MyUser;

@Component
public class SecurityUtils {
	public static MyUser getPrincipal() {
		MyUser myUser = (MyUser) (SecurityContextHolder.getContext()).getAuthentication().getPrincipal();
        return myUser;
    }
	public static List<String> getAuthorities()
	{
		List<String> results = new ArrayList<>();
		@SuppressWarnings("unchecked")
		List<GrantedAuthority> authorities = (List<GrantedAuthority>)(SecurityContextHolder.getContext().getAuthentication().getAuthorities());
        for (GrantedAuthority authority : authorities) {
            results.add(authority.getAuthority());
        }
		return results;
	}
	public boolean isLogin() {
		  Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		  return null != authentication
		      && authentication.isAuthenticated()
		      && !(authentication instanceof AnonymousAuthenticationToken);
		}
}
