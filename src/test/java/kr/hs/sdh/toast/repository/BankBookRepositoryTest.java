package kr.hs.sdh.toast.repository;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.UUID;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class BankBookRepositoryTest {

    @Autowired
    private BankBookRepository bankBookRepository;

    @Test
    void findAllByBankId() {
        final var bankId = UUID.fromString("e5b341bd-a154-11ef-ae5b-d85ed3d6bf8b");
        final var bankBooks = this.bankBookRepository.findAllByBankId(bankId);

        Assertions.assertEquals(5, bankBooks.size(), "조회된 결과 갯수가 올바르지 않습니다.");
    }

}