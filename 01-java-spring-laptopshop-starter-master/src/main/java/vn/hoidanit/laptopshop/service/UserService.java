package vn.hoidanit.laptopshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.RoleRepository;
import vn.hoidanit.laptopshop.repository.UserRepository;
import vn.hoidanit.laptopshop.domain.Role;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;

    public String handleHello() {
        return "Hello from service";
    }

    public User getUserById(Long id) {
        return this.userRepository.findById(id).get();
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public List<User> getAllUsersByEmail(String email) {
        return this.userRepository.findOneByEmail(email);
    }

    // public User handelSaveUser(User user) {
    // User eric = this.userRepository.save(user);
    // return eric;
    // }

    public User handelSaveUser(User user) {
        if (emailExists(user.getEmail())) {
            throw new IllegalArgumentException("Email " + user.getEmail() + " đã tồn tại!");
        }
        return this.userRepository.save(user);
    }

    private boolean emailExists(String email) {
        List<User> users = userRepository.findOneByEmail(email);
        return !users.isEmpty();
    }

    public void deleteAUser(long id) {
        this.userRepository.deleteById(id);
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }

}
