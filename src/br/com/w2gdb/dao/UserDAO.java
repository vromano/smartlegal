package br.com.w2gdb.dao;

import java.util.List;

import br.com.w2gdb.domain.User;

public interface UserDAO {

	public void saveOrUpdateUser(User user);
	public List<User> listUser();
	public User listUserById(Long userId);
	public void deleteUser(Long userId);
}
