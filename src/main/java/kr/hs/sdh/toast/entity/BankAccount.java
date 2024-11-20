package kr.hs.sdh.toast.entity;

import java.time.LocalDateTime;
import java.util.Set;

/**
 * 'BANK_ACCOUNT' 테이블의 데이터를 담는 클래스
 *
 * @since 2023-11-18
 * @version 0.0.1
 */
public final class BankAccount {

    /**
     * 계좌 번호 (Mapped to 'BANK_ACCOUNT.ba_number')
     */
    private final String number;

    /**
     * 계좌 금액 (Mapped to 'BANK_ACCOUNT.ba_amount')
     */
    private final long amount;

    /**
     * 계좌 별칭 (Mapped to 'BANK_ACCOUNT.ba_alias')
     */
    private final String alias;

    /**
     * 계좌 생성일자 (Mapped to 'BANK_ACCOUNT.ba_create_date')
     */
    private final LocalDateTime createDateTime;

    /**
     * 계좌 만기일자 (Mapped to 'BANK_ACCOUNT.ba_maturity_date')
     */
    private final LocalDateTime maturityDateTime;

    /**
     * 계좌 동결 여부 (Mapped to 'BANK_ACCOUNT.ba_freeze')
     */
    private final boolean isFreeze;

    /**
     * 통장 테이블 (Mapped to 'BANK_BOOK')
     */
    private BankBook bankBook;

    /**
     * 통장 거래이력 테이블 (Mapped to 'BANK_ACCOUNT_HISTORY')
     */
    private Set<BankAccountHistory> bankAccountHistories;

    /**
     * {@link BankAccount} 클래스의 생성자
     * 
     * @param number 계좌 번호
     * @param amount 계좌 금액
     * @param alias 계좌 별칭
     * @param createDateTime 계좌 생성일자
     * @param maturityDateTime 계좌 만기일자
     * @param isFreeze 계좌 동결 여부
     */
    public BankAccount(
        final String number,
        final long amount,
        final String alias,
        final LocalDateTime createDateTime,
        final LocalDateTime maturityDateTime,
        final boolean isFreeze
    ) {
        this.number = number;
        this.amount = amount;
        this.alias = alias;
        this.createDateTime = createDateTime;
        this.maturityDateTime = maturityDateTime;
        this.isFreeze = isFreeze;
    }

    public boolean isFreeze() {
        return this.isFreeze;
    }

    public LocalDateTime getMaturityDateTime() {
        return this.maturityDateTime;
    }

    public LocalDateTime getCreateDateTime() {
        return this.createDateTime;
    }

    public String getAlias() {
        return this.alias;
    }

    public long getAmount() {
        return this.amount;
    }

    public String getNumber() {
        return this.number;
    }

    public void setBankBook(final BankBook bankBook) {
        this.bankBook = bankBook;
    }

    public BankBook getBankBook() {
        return bankBook;
    }

    public Set<BankAccountHistory> getBankAccountHistories() {
        return bankAccountHistories;
    }

    public void setBankAccountHistories(final Set<BankAccountHistory> bankAccountHistories) {
        this.bankAccountHistories = bankAccountHistories;
    }

    @Override
    public boolean equals(final Object object) {
        if (object != null) {
            if (this == object) {
                return true;
            }

            if (object instanceof final BankAccount bankAccount) {
                return this.number.contentEquals(bankAccount.number);
            }
        }

        return false;
    }

    @Override
    public int hashCode() {
        return this.number.hashCode();
    }

}