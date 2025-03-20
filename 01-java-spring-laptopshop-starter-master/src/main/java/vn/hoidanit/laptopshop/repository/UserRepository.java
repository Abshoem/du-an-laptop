package vn.hoidanit.laptopshop.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import vn.hoidanit.laptopshop.domain.User;
import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long>, CrudRepository<User, Long> {
    User save(User hoidanit);

    void deleteById(long id);

    List<User> findOneByEmail(String email);

    Page<User> findAll(Pageable pageable);

    User findById(long id);

    boolean existsByEmail(String email);

    User findByEmail(String email);
}
