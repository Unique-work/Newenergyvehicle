package com.siit.zsw.pojo;

import java.util.ArrayList;
import java.util.List;

public class cardistributionExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public cardistributionExample() {
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

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andCarmessageidIsNull() {
            addCriterion("carmessageid is null");
            return (Criteria) this;
        }

        public Criteria andCarmessageidIsNotNull() {
            addCriterion("carmessageid is not null");
            return (Criteria) this;
        }

        public Criteria andCarmessageidEqualTo(Integer value) {
            addCriterion("carmessageid =", value, "carmessageid");
            return (Criteria) this;
        }

        public Criteria andCarmessageidNotEqualTo(Integer value) {
            addCriterion("carmessageid <>", value, "carmessageid");
            return (Criteria) this;
        }

        public Criteria andCarmessageidGreaterThan(Integer value) {
            addCriterion("carmessageid >", value, "carmessageid");
            return (Criteria) this;
        }

        public Criteria andCarmessageidGreaterThanOrEqualTo(Integer value) {
            addCriterion("carmessageid >=", value, "carmessageid");
            return (Criteria) this;
        }

        public Criteria andCarmessageidLessThan(Integer value) {
            addCriterion("carmessageid <", value, "carmessageid");
            return (Criteria) this;
        }

        public Criteria andCarmessageidLessThanOrEqualTo(Integer value) {
            addCriterion("carmessageid <=", value, "carmessageid");
            return (Criteria) this;
        }

        public Criteria andCarmessageidIn(List<Integer> values) {
            addCriterion("carmessageid in", values, "carmessageid");
            return (Criteria) this;
        }

        public Criteria andCarmessageidNotIn(List<Integer> values) {
            addCriterion("carmessageid not in", values, "carmessageid");
            return (Criteria) this;
        }

        public Criteria andCarmessageidBetween(Integer value1, Integer value2) {
            addCriterion("carmessageid between", value1, value2, "carmessageid");
            return (Criteria) this;
        }

        public Criteria andCarmessageidNotBetween(Integer value1, Integer value2) {
            addCriterion("carmessageid not between", value1, value2, "carmessageid");
            return (Criteria) this;
        }

        public Criteria andDistributionidIsNull() {
            addCriterion("distributionid is null");
            return (Criteria) this;
        }

        public Criteria andDistributionidIsNotNull() {
            addCriterion("distributionid is not null");
            return (Criteria) this;
        }

        public Criteria andDistributionidEqualTo(Integer value) {
            addCriterion("distributionid =", value, "distributionid");
            return (Criteria) this;
        }

        public Criteria andDistributionidNotEqualTo(Integer value) {
            addCriterion("distributionid <>", value, "distributionid");
            return (Criteria) this;
        }

        public Criteria andDistributionidGreaterThan(Integer value) {
            addCriterion("distributionid >", value, "distributionid");
            return (Criteria) this;
        }

        public Criteria andDistributionidGreaterThanOrEqualTo(Integer value) {
            addCriterion("distributionid >=", value, "distributionid");
            return (Criteria) this;
        }

        public Criteria andDistributionidLessThan(Integer value) {
            addCriterion("distributionid <", value, "distributionid");
            return (Criteria) this;
        }

        public Criteria andDistributionidLessThanOrEqualTo(Integer value) {
            addCriterion("distributionid <=", value, "distributionid");
            return (Criteria) this;
        }

        public Criteria andDistributionidIn(List<Integer> values) {
            addCriterion("distributionid in", values, "distributionid");
            return (Criteria) this;
        }

        public Criteria andDistributionidNotIn(List<Integer> values) {
            addCriterion("distributionid not in", values, "distributionid");
            return (Criteria) this;
        }

        public Criteria andDistributionidBetween(Integer value1, Integer value2) {
            addCriterion("distributionid between", value1, value2, "distributionid");
            return (Criteria) this;
        }

        public Criteria andDistributionidNotBetween(Integer value1, Integer value2) {
            addCriterion("distributionid not between", value1, value2, "distributionid");
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