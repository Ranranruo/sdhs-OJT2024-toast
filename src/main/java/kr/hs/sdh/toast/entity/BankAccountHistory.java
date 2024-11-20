package kr.hs.sdh.toast.entity;

import java.time.LocalDateTime;

/**
 * 'BANK_ACCOUNT_HISTORY' 테이블의 데이터를 담는 클래스
 *
 * @since 2023-11-18
 * @version 0.0.1
 */
public final class BankAccountHistory {

    /**
     * 거래 금액 (Mapped to 'BANK_ACCOUNT_HISTORY.bah_amount')
     */
    private final long amount;

    /**
     * 거래 전 금액 (Mapped to 'BANK_ACCOUNT_HISTORY.bah_bef_amount')
     */
    private final long beforeAmount;

    /**
     * 거래 메모 (Mapped to 'BANK_ACCOUNT_HISTORY.bah_memo')
     */
    private final String memo;

    /**
     * 거래 타입 (Mapped to 'BANK_ACCOUNT_HISTORY.bah_type')
     */
    private final String type;

    /**
     * 거래일자 (Mapped to 'BANK_ACCOUNT_HISTORY.bah_trans_date')
     */
    private final LocalDateTime transDateTime;

    /**
     * {@link BankAccountHistory} 클래스의 생성자
     *
     * @param amount 거래 금액
     * @param beforeAmount 거래 전 금액
     * @param memo 거래 메모
     * @param type 거래 타입
     * @param transDateTime 거래일자
     */
    public BankAccountHistory(
        final long amount,
        final long beforeAmount,
        final String memo,
        final String type,
        final LocalDateTime transDateTime
    ) {
        this.amount = amount;
        this.beforeAmount = beforeAmount;
        this.memo = memo;
        this.type = type;
        this.transDateTime = transDateTime;
    }

    public long getAmount() {
        return this.amount;
    }

    public long getBeforeAmount() {
        return this.beforeAmount;
    }

    public String getMemo() {
        return this.memo;
    }

    public String getType() {
        return this.type;
    }

    public LocalDateTime getTransDateTime() {
        return this.transDateTime;
    }
    
}