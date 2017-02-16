package com.Zeal.Shiyulin_Explorer.modules.login.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class AuthUserExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public AuthUserExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Long value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Long value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Long value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Long value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Long value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Long value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Long> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Long> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Long value1, Long value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Long value1, Long value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andPasswordIsNull() {
            addCriterion("password is null");
            return (Criteria) this;
        }

        public Criteria andPasswordIsNotNull() {
            addCriterion("password is not null");
            return (Criteria) this;
        }

        public Criteria andPasswordEqualTo(String value) {
            addCriterion("password =", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotEqualTo(String value) {
            addCriterion("password <>", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordGreaterThan(String value) {
            addCriterion("password >", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("password >=", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordLessThan(String value) {
            addCriterion("password <", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordLessThanOrEqualTo(String value) {
            addCriterion("password <=", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordLike(String value) {
            addCriterion("password like", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotLike(String value) {
            addCriterion("password not like", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordIn(List<String> values) {
            addCriterion("password in", values, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotIn(List<String> values) {
            addCriterion("password not in", values, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordBetween(String value1, String value2) {
            addCriterion("password between", value1, value2, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotBetween(String value1, String value2) {
            addCriterion("password not between", value1, value2, "password");
            return (Criteria) this;
        }

        public Criteria andBindPhoneIsNull() {
            addCriterion("bind_phone is null");
            return (Criteria) this;
        }

        public Criteria andBindPhoneIsNotNull() {
            addCriterion("bind_phone is not null");
            return (Criteria) this;
        }

        public Criteria andBindPhoneEqualTo(String value) {
            addCriterion("bind_phone =", value, "bindPhone");
            return (Criteria) this;
        }

        public Criteria andBindPhoneNotEqualTo(String value) {
            addCriterion("bind_phone <>", value, "bindPhone");
            return (Criteria) this;
        }

        public Criteria andBindPhoneGreaterThan(String value) {
            addCriterion("bind_phone >", value, "bindPhone");
            return (Criteria) this;
        }

        public Criteria andBindPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("bind_phone >=", value, "bindPhone");
            return (Criteria) this;
        }

        public Criteria andBindPhoneLessThan(String value) {
            addCriterion("bind_phone <", value, "bindPhone");
            return (Criteria) this;
        }

        public Criteria andBindPhoneLessThanOrEqualTo(String value) {
            addCriterion("bind_phone <=", value, "bindPhone");
            return (Criteria) this;
        }

        public Criteria andBindPhoneLike(String value) {
            addCriterion("bind_phone like", value, "bindPhone");
            return (Criteria) this;
        }

        public Criteria andBindPhoneNotLike(String value) {
            addCriterion("bind_phone not like", value, "bindPhone");
            return (Criteria) this;
        }

        public Criteria andBindPhoneIn(List<String> values) {
            addCriterion("bind_phone in", values, "bindPhone");
            return (Criteria) this;
        }

        public Criteria andBindPhoneNotIn(List<String> values) {
            addCriterion("bind_phone not in", values, "bindPhone");
            return (Criteria) this;
        }

        public Criteria andBindPhoneBetween(String value1, String value2) {
            addCriterion("bind_phone between", value1, value2, "bindPhone");
            return (Criteria) this;
        }

        public Criteria andBindPhoneNotBetween(String value1, String value2) {
            addCriterion("bind_phone not between", value1, value2, "bindPhone");
            return (Criteria) this;
        }

        public Criteria andBindQqIsNull() {
            addCriterion("bind_QQ is null");
            return (Criteria) this;
        }

        public Criteria andBindQqIsNotNull() {
            addCriterion("bind_QQ is not null");
            return (Criteria) this;
        }

        public Criteria andBindQqEqualTo(String value) {
            addCriterion("bind_QQ =", value, "bindQq");
            return (Criteria) this;
        }

        public Criteria andBindQqNotEqualTo(String value) {
            addCriterion("bind_QQ <>", value, "bindQq");
            return (Criteria) this;
        }

        public Criteria andBindQqGreaterThan(String value) {
            addCriterion("bind_QQ >", value, "bindQq");
            return (Criteria) this;
        }

        public Criteria andBindQqGreaterThanOrEqualTo(String value) {
            addCriterion("bind_QQ >=", value, "bindQq");
            return (Criteria) this;
        }

        public Criteria andBindQqLessThan(String value) {
            addCriterion("bind_QQ <", value, "bindQq");
            return (Criteria) this;
        }

        public Criteria andBindQqLessThanOrEqualTo(String value) {
            addCriterion("bind_QQ <=", value, "bindQq");
            return (Criteria) this;
        }

        public Criteria andBindQqLike(String value) {
            addCriterion("bind_QQ like", value, "bindQq");
            return (Criteria) this;
        }

        public Criteria andBindQqNotLike(String value) {
            addCriterion("bind_QQ not like", value, "bindQq");
            return (Criteria) this;
        }

        public Criteria andBindQqIn(List<String> values) {
            addCriterion("bind_QQ in", values, "bindQq");
            return (Criteria) this;
        }

        public Criteria andBindQqNotIn(List<String> values) {
            addCriterion("bind_QQ not in", values, "bindQq");
            return (Criteria) this;
        }

        public Criteria andBindQqBetween(String value1, String value2) {
            addCriterion("bind_QQ between", value1, value2, "bindQq");
            return (Criteria) this;
        }

        public Criteria andBindQqNotBetween(String value1, String value2) {
            addCriterion("bind_QQ not between", value1, value2, "bindQq");
            return (Criteria) this;
        }

        public Criteria andBindEmailIsNull() {
            addCriterion("bind_Email is null");
            return (Criteria) this;
        }

        public Criteria andBindEmailIsNotNull() {
            addCriterion("bind_Email is not null");
            return (Criteria) this;
        }

        public Criteria andBindEmailEqualTo(String value) {
            addCriterion("bind_Email =", value, "bindEmail");
            return (Criteria) this;
        }

        public Criteria andBindEmailNotEqualTo(String value) {
            addCriterion("bind_Email <>", value, "bindEmail");
            return (Criteria) this;
        }

        public Criteria andBindEmailGreaterThan(String value) {
            addCriterion("bind_Email >", value, "bindEmail");
            return (Criteria) this;
        }

        public Criteria andBindEmailGreaterThanOrEqualTo(String value) {
            addCriterion("bind_Email >=", value, "bindEmail");
            return (Criteria) this;
        }

        public Criteria andBindEmailLessThan(String value) {
            addCriterion("bind_Email <", value, "bindEmail");
            return (Criteria) this;
        }

        public Criteria andBindEmailLessThanOrEqualTo(String value) {
            addCriterion("bind_Email <=", value, "bindEmail");
            return (Criteria) this;
        }

        public Criteria andBindEmailLike(String value) {
            addCriterion("bind_Email like", value, "bindEmail");
            return (Criteria) this;
        }

        public Criteria andBindEmailNotLike(String value) {
            addCriterion("bind_Email not like", value, "bindEmail");
            return (Criteria) this;
        }

        public Criteria andBindEmailIn(List<String> values) {
            addCriterion("bind_Email in", values, "bindEmail");
            return (Criteria) this;
        }

        public Criteria andBindEmailNotIn(List<String> values) {
            addCriterion("bind_Email not in", values, "bindEmail");
            return (Criteria) this;
        }

        public Criteria andBindEmailBetween(String value1, String value2) {
            addCriterion("bind_Email between", value1, value2, "bindEmail");
            return (Criteria) this;
        }

        public Criteria andBindEmailNotBetween(String value1, String value2) {
            addCriterion("bind_Email not between", value1, value2, "bindEmail");
            return (Criteria) this;
        }

        public Criteria andBindWechatIsNull() {
            addCriterion("bind_wechat is null");
            return (Criteria) this;
        }

        public Criteria andBindWechatIsNotNull() {
            addCriterion("bind_wechat is not null");
            return (Criteria) this;
        }

        public Criteria andBindWechatEqualTo(String value) {
            addCriterion("bind_wechat =", value, "bindWechat");
            return (Criteria) this;
        }

        public Criteria andBindWechatNotEqualTo(String value) {
            addCriterion("bind_wechat <>", value, "bindWechat");
            return (Criteria) this;
        }

        public Criteria andBindWechatGreaterThan(String value) {
            addCriterion("bind_wechat >", value, "bindWechat");
            return (Criteria) this;
        }

        public Criteria andBindWechatGreaterThanOrEqualTo(String value) {
            addCriterion("bind_wechat >=", value, "bindWechat");
            return (Criteria) this;
        }

        public Criteria andBindWechatLessThan(String value) {
            addCriterion("bind_wechat <", value, "bindWechat");
            return (Criteria) this;
        }

        public Criteria andBindWechatLessThanOrEqualTo(String value) {
            addCriterion("bind_wechat <=", value, "bindWechat");
            return (Criteria) this;
        }

        public Criteria andBindWechatLike(String value) {
            addCriterion("bind_wechat like", value, "bindWechat");
            return (Criteria) this;
        }

        public Criteria andBindWechatNotLike(String value) {
            addCriterion("bind_wechat not like", value, "bindWechat");
            return (Criteria) this;
        }

        public Criteria andBindWechatIn(List<String> values) {
            addCriterion("bind_wechat in", values, "bindWechat");
            return (Criteria) this;
        }

        public Criteria andBindWechatNotIn(List<String> values) {
            addCriterion("bind_wechat not in", values, "bindWechat");
            return (Criteria) this;
        }

        public Criteria andBindWechatBetween(String value1, String value2) {
            addCriterion("bind_wechat between", value1, value2, "bindWechat");
            return (Criteria) this;
        }

        public Criteria andBindWechatNotBetween(String value1, String value2) {
            addCriterion("bind_wechat not between", value1, value2, "bindWechat");
            return (Criteria) this;
        }

        public Criteria andSexIsNull() {
            addCriterion("sex is null");
            return (Criteria) this;
        }

        public Criteria andSexIsNotNull() {
            addCriterion("sex is not null");
            return (Criteria) this;
        }

        public Criteria andSexEqualTo(Integer value) {
            addCriterion("sex =", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotEqualTo(Integer value) {
            addCriterion("sex <>", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexGreaterThan(Integer value) {
            addCriterion("sex >", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexGreaterThanOrEqualTo(Integer value) {
            addCriterion("sex >=", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexLessThan(Integer value) {
            addCriterion("sex <", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexLessThanOrEqualTo(Integer value) {
            addCriterion("sex <=", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexIn(List<Integer> values) {
            addCriterion("sex in", values, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotIn(List<Integer> values) {
            addCriterion("sex not in", values, "sex");
            return (Criteria) this;
        }

        public Criteria andSexBetween(Integer value1, Integer value2) {
            addCriterion("sex between", value1, value2, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotBetween(Integer value1, Integer value2) {
            addCriterion("sex not between", value1, value2, "sex");
            return (Criteria) this;
        }

        public Criteria andAddressIsNull() {
            addCriterion("address is null");
            return (Criteria) this;
        }

        public Criteria andAddressIsNotNull() {
            addCriterion("address is not null");
            return (Criteria) this;
        }

        public Criteria andAddressEqualTo(String value) {
            addCriterion("address =", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotEqualTo(String value) {
            addCriterion("address <>", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThan(String value) {
            addCriterion("address >", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThanOrEqualTo(String value) {
            addCriterion("address >=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThan(String value) {
            addCriterion("address <", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThanOrEqualTo(String value) {
            addCriterion("address <=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLike(String value) {
            addCriterion("address like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotLike(String value) {
            addCriterion("address not like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressIn(List<String> values) {
            addCriterion("address in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotIn(List<String> values) {
            addCriterion("address not in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressBetween(String value1, String value2) {
            addCriterion("address between", value1, value2, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotBetween(String value1, String value2) {
            addCriterion("address not between", value1, value2, "address");
            return (Criteria) this;
        }

        public Criteria andImgIsNull() {
            addCriterion("img is null");
            return (Criteria) this;
        }

        public Criteria andImgIsNotNull() {
            addCriterion("img is not null");
            return (Criteria) this;
        }

        public Criteria andImgEqualTo(Long value) {
            addCriterion("img =", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgNotEqualTo(Long value) {
            addCriterion("img <>", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgGreaterThan(Long value) {
            addCriterion("img >", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgGreaterThanOrEqualTo(Long value) {
            addCriterion("img >=", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgLessThan(Long value) {
            addCriterion("img <", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgLessThanOrEqualTo(Long value) {
            addCriterion("img <=", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgIn(List<Long> values) {
            addCriterion("img in", values, "img");
            return (Criteria) this;
        }

        public Criteria andImgNotIn(List<Long> values) {
            addCriterion("img not in", values, "img");
            return (Criteria) this;
        }

        public Criteria andImgBetween(Long value1, Long value2) {
            addCriterion("img between", value1, value2, "img");
            return (Criteria) this;
        }

        public Criteria andImgNotBetween(Long value1, Long value2) {
            addCriterion("img not between", value1, value2, "img");
            return (Criteria) this;
        }

        public Criteria andSignatureIsNull() {
            addCriterion("signature is null");
            return (Criteria) this;
        }

        public Criteria andSignatureIsNotNull() {
            addCriterion("signature is not null");
            return (Criteria) this;
        }

        public Criteria andSignatureEqualTo(String value) {
            addCriterion("signature =", value, "signature");
            return (Criteria) this;
        }

        public Criteria andSignatureNotEqualTo(String value) {
            addCriterion("signature <>", value, "signature");
            return (Criteria) this;
        }

        public Criteria andSignatureGreaterThan(String value) {
            addCriterion("signature >", value, "signature");
            return (Criteria) this;
        }

        public Criteria andSignatureGreaterThanOrEqualTo(String value) {
            addCriterion("signature >=", value, "signature");
            return (Criteria) this;
        }

        public Criteria andSignatureLessThan(String value) {
            addCriterion("signature <", value, "signature");
            return (Criteria) this;
        }

        public Criteria andSignatureLessThanOrEqualTo(String value) {
            addCriterion("signature <=", value, "signature");
            return (Criteria) this;
        }

        public Criteria andSignatureLike(String value) {
            addCriterion("signature like", value, "signature");
            return (Criteria) this;
        }

        public Criteria andSignatureNotLike(String value) {
            addCriterion("signature not like", value, "signature");
            return (Criteria) this;
        }

        public Criteria andSignatureIn(List<String> values) {
            addCriterion("signature in", values, "signature");
            return (Criteria) this;
        }

        public Criteria andSignatureNotIn(List<String> values) {
            addCriterion("signature not in", values, "signature");
            return (Criteria) this;
        }

        public Criteria andSignatureBetween(String value1, String value2) {
            addCriterion("signature between", value1, value2, "signature");
            return (Criteria) this;
        }

        public Criteria andSignatureNotBetween(String value1, String value2) {
            addCriterion("signature not between", value1, value2, "signature");
            return (Criteria) this;
        }

        public Criteria andRegistTimeIsNull() {
            addCriterion("regist_time is null");
            return (Criteria) this;
        }

        public Criteria andRegistTimeIsNotNull() {
            addCriterion("regist_time is not null");
            return (Criteria) this;
        }

        public Criteria andRegistTimeEqualTo(Date value) {
            addCriterionForJDBCDate("regist_time =", value, "registTime");
            return (Criteria) this;
        }

        public Criteria andRegistTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("regist_time <>", value, "registTime");
            return (Criteria) this;
        }

        public Criteria andRegistTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("regist_time >", value, "registTime");
            return (Criteria) this;
        }

        public Criteria andRegistTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("regist_time >=", value, "registTime");
            return (Criteria) this;
        }

        public Criteria andRegistTimeLessThan(Date value) {
            addCriterionForJDBCDate("regist_time <", value, "registTime");
            return (Criteria) this;
        }

        public Criteria andRegistTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("regist_time <=", value, "registTime");
            return (Criteria) this;
        }

        public Criteria andRegistTimeIn(List<Date> values) {
            addCriterionForJDBCDate("regist_time in", values, "registTime");
            return (Criteria) this;
        }

        public Criteria andRegistTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("regist_time not in", values, "registTime");
            return (Criteria) this;
        }

        public Criteria andRegistTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("regist_time between", value1, value2, "registTime");
            return (Criteria) this;
        }

        public Criteria andRegistTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("regist_time not between", value1, value2, "registTime");
            return (Criteria) this;
        }

        public Criteria andAgeIsNull() {
            addCriterion("age is null");
            return (Criteria) this;
        }

        public Criteria andAgeIsNotNull() {
            addCriterion("age is not null");
            return (Criteria) this;
        }

        public Criteria andAgeEqualTo(Integer value) {
            addCriterion("age =", value, "age");
            return (Criteria) this;
        }

        public Criteria andAgeNotEqualTo(Integer value) {
            addCriterion("age <>", value, "age");
            return (Criteria) this;
        }

        public Criteria andAgeGreaterThan(Integer value) {
            addCriterion("age >", value, "age");
            return (Criteria) this;
        }

        public Criteria andAgeGreaterThanOrEqualTo(Integer value) {
            addCriterion("age >=", value, "age");
            return (Criteria) this;
        }

        public Criteria andAgeLessThan(Integer value) {
            addCriterion("age <", value, "age");
            return (Criteria) this;
        }

        public Criteria andAgeLessThanOrEqualTo(Integer value) {
            addCriterion("age <=", value, "age");
            return (Criteria) this;
        }

        public Criteria andAgeIn(List<Integer> values) {
            addCriterion("age in", values, "age");
            return (Criteria) this;
        }

        public Criteria andAgeNotIn(List<Integer> values) {
            addCriterion("age not in", values, "age");
            return (Criteria) this;
        }

        public Criteria andAgeBetween(Integer value1, Integer value2) {
            addCriterion("age between", value1, value2, "age");
            return (Criteria) this;
        }

        public Criteria andAgeNotBetween(Integer value1, Integer value2) {
            addCriterion("age not between", value1, value2, "age");
            return (Criteria) this;
        }

        public Criteria andLovestatusIsNull() {
            addCriterion("lovestatus is null");
            return (Criteria) this;
        }

        public Criteria andLovestatusIsNotNull() {
            addCriterion("lovestatus is not null");
            return (Criteria) this;
        }

        public Criteria andLovestatusEqualTo(Integer value) {
            addCriterion("lovestatus =", value, "lovestatus");
            return (Criteria) this;
        }

        public Criteria andLovestatusNotEqualTo(Integer value) {
            addCriterion("lovestatus <>", value, "lovestatus");
            return (Criteria) this;
        }

        public Criteria andLovestatusGreaterThan(Integer value) {
            addCriterion("lovestatus >", value, "lovestatus");
            return (Criteria) this;
        }

        public Criteria andLovestatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("lovestatus >=", value, "lovestatus");
            return (Criteria) this;
        }

        public Criteria andLovestatusLessThan(Integer value) {
            addCriterion("lovestatus <", value, "lovestatus");
            return (Criteria) this;
        }

        public Criteria andLovestatusLessThanOrEqualTo(Integer value) {
            addCriterion("lovestatus <=", value, "lovestatus");
            return (Criteria) this;
        }

        public Criteria andLovestatusIn(List<Integer> values) {
            addCriterion("lovestatus in", values, "lovestatus");
            return (Criteria) this;
        }

        public Criteria andLovestatusNotIn(List<Integer> values) {
            addCriterion("lovestatus not in", values, "lovestatus");
            return (Criteria) this;
        }

        public Criteria andLovestatusBetween(Integer value1, Integer value2) {
            addCriterion("lovestatus between", value1, value2, "lovestatus");
            return (Criteria) this;
        }

        public Criteria andLovestatusNotBetween(Integer value1, Integer value2) {
            addCriterion("lovestatus not between", value1, value2, "lovestatus");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}