package kr.hs.sdh.toast.repository;

import kr.hs.sdh.toast.entity.Customer;
import org.apache.ibatis.annotations.*;

@Mapper
public interface AccountRepository {

    //    @ConstructorArgs(value = {
//            @Arg(column = "c_id", name = "id"),
//            @Arg(column = "c_password", name = "password"),
//            @Arg(column = "c_alies", name = "alies")
//    })
    @Results(
            id = "customer",
            value = {
                    @Result(column = "c_id", property = "id"),
                    @Result(column = "c_password", property = "password"),
                    @Result(column = "c_alies", property = "alies"),
                    @Result(column = "p_uuid", property = "people", one = @One(resultMap = PeopleRepository.PEOPLE))
            }
    )
    @Select(value = "")
    Customer customer();

    @ResultMap(value = "customer")
    @Select("""
                SELECT
                    *
                FROM
                    customer AS c
                    INNER JOIN people AS p ON c.p_uuid = p.p_uuid
                WHERE
                    c_id = #{userId}
            """)
    Customer findById(final String userId);
}