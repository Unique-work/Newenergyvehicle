package com.siit.zsw.pojo;

import java.util.ArrayList;
import java.util.List;

public class FaultinfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public FaultinfoExample() {
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

        public Criteria andFaultidIsNull() {
            addCriterion("faultID is null");
            return (Criteria) this;
        }

        public Criteria andFaultidIsNotNull() {
            addCriterion("faultID is not null");
            return (Criteria) this;
        }

        public Criteria andFaultidEqualTo(String value) {
            addCriterion("faultID =", value, "faultid");
            return (Criteria) this;
        }

        public Criteria andFaultidNotEqualTo(String value) {
            addCriterion("faultID <>", value, "faultid");
            return (Criteria) this;
        }

        public Criteria andFaultidGreaterThan(String value) {
            addCriterion("faultID >", value, "faultid");
            return (Criteria) this;
        }

        public Criteria andFaultidGreaterThanOrEqualTo(String value) {
            addCriterion("faultID >=", value, "faultid");
            return (Criteria) this;
        }

        public Criteria andFaultidLessThan(String value) {
            addCriterion("faultID <", value, "faultid");
            return (Criteria) this;
        }

        public Criteria andFaultidLessThanOrEqualTo(String value) {
            addCriterion("faultID <=", value, "faultid");
            return (Criteria) this;
        }

        public Criteria andFaultidLike(String value) {
            addCriterion("faultID like", value, "faultid");
            return (Criteria) this;
        }

        public Criteria andFaultidNotLike(String value) {
            addCriterion("faultID not like", value, "faultid");
            return (Criteria) this;
        }

        public Criteria andFaultidIn(List<String> values) {
            addCriterion("faultID in", values, "faultid");
            return (Criteria) this;
        }

        public Criteria andFaultidNotIn(List<String> values) {
            addCriterion("faultID not in", values, "faultid");
            return (Criteria) this;
        }

        public Criteria andFaultidBetween(String value1, String value2) {
            addCriterion("faultID between", value1, value2, "faultid");
            return (Criteria) this;
        }

        public Criteria andFaultidNotBetween(String value1, String value2) {
            addCriterion("faultID not between", value1, value2, "faultid");
            return (Criteria) this;
        }

        public Criteria andFaultstateIsNull() {
            addCriterion("faultState is null");
            return (Criteria) this;
        }

        public Criteria andFaultstateIsNotNull() {
            addCriterion("faultState is not null");
            return (Criteria) this;
        }

        public Criteria andFaultstateEqualTo(String value) {
            addCriterion("faultState =", value, "faultstate");
            return (Criteria) this;
        }

        public Criteria andFaultstateNotEqualTo(String value) {
            addCriterion("faultState <>", value, "faultstate");
            return (Criteria) this;
        }

        public Criteria andFaultstateGreaterThan(String value) {
            addCriterion("faultState >", value, "faultstate");
            return (Criteria) this;
        }

        public Criteria andFaultstateGreaterThanOrEqualTo(String value) {
            addCriterion("faultState >=", value, "faultstate");
            return (Criteria) this;
        }

        public Criteria andFaultstateLessThan(String value) {
            addCriterion("faultState <", value, "faultstate");
            return (Criteria) this;
        }

        public Criteria andFaultstateLessThanOrEqualTo(String value) {
            addCriterion("faultState <=", value, "faultstate");
            return (Criteria) this;
        }

        public Criteria andFaultstateLike(String value) {
            addCriterion("faultState like", value, "faultstate");
            return (Criteria) this;
        }

        public Criteria andFaultstateNotLike(String value) {
            addCriterion("faultState not like", value, "faultstate");
            return (Criteria) this;
        }

        public Criteria andFaultstateIn(List<String> values) {
            addCriterion("faultState in", values, "faultstate");
            return (Criteria) this;
        }

        public Criteria andFaultstateNotIn(List<String> values) {
            addCriterion("faultState not in", values, "faultstate");
            return (Criteria) this;
        }

        public Criteria andFaultstateBetween(String value1, String value2) {
            addCriterion("faultState between", value1, value2, "faultstate");
            return (Criteria) this;
        }

        public Criteria andFaultstateNotBetween(String value1, String value2) {
            addCriterion("faultState not between", value1, value2, "faultstate");
            return (Criteria) this;
        }

        public Criteria andVehidIsNull() {
            addCriterion("vehID is null");
            return (Criteria) this;
        }

        public Criteria andVehidIsNotNull() {
            addCriterion("vehID is not null");
            return (Criteria) this;
        }

        public Criteria andVehidEqualTo(String value) {
            addCriterion("vehID =", value, "vehid");
            return (Criteria) this;
        }

        public Criteria andVehidNotEqualTo(String value) {
            addCriterion("vehID <>", value, "vehid");
            return (Criteria) this;
        }

        public Criteria andVehidGreaterThan(String value) {
            addCriterion("vehID >", value, "vehid");
            return (Criteria) this;
        }

        public Criteria andVehidGreaterThanOrEqualTo(String value) {
            addCriterion("vehID >=", value, "vehid");
            return (Criteria) this;
        }

        public Criteria andVehidLessThan(String value) {
            addCriterion("vehID <", value, "vehid");
            return (Criteria) this;
        }

        public Criteria andVehidLessThanOrEqualTo(String value) {
            addCriterion("vehID <=", value, "vehid");
            return (Criteria) this;
        }

        public Criteria andVehidLike(String value) {
            addCriterion("vehID like", value, "vehid");
            return (Criteria) this;
        }

        public Criteria andVehidNotLike(String value) {
            addCriterion("vehID not like", value, "vehid");
            return (Criteria) this;
        }

        public Criteria andVehidIn(List<String> values) {
            addCriterion("vehID in", values, "vehid");
            return (Criteria) this;
        }

        public Criteria andVehidNotIn(List<String> values) {
            addCriterion("vehID not in", values, "vehid");
            return (Criteria) this;
        }

        public Criteria andVehidBetween(String value1, String value2) {
            addCriterion("vehID between", value1, value2, "vehid");
            return (Criteria) this;
        }

        public Criteria andVehidNotBetween(String value1, String value2) {
            addCriterion("vehID not between", value1, value2, "vehid");
            return (Criteria) this;
        }

        public Criteria andRealtimeIsNull() {
            addCriterion("realtime is null");
            return (Criteria) this;
        }

        public Criteria andRealtimeIsNotNull() {
            addCriterion("realtime is not null");
            return (Criteria) this;
        }

        public Criteria andRealtimeEqualTo(String value) {
            addCriterion("realtime =", value, "realtime");
            return (Criteria) this;
        }

        public Criteria andRealtimeNotEqualTo(String value) {
            addCriterion("realtime <>", value, "realtime");
            return (Criteria) this;
        }

        public Criteria andRealtimeGreaterThan(String value) {
            addCriterion("realtime >", value, "realtime");
            return (Criteria) this;
        }

        public Criteria andRealtimeGreaterThanOrEqualTo(String value) {
            addCriterion("realtime >=", value, "realtime");
            return (Criteria) this;
        }

        public Criteria andRealtimeLessThan(String value) {
            addCriterion("realtime <", value, "realtime");
            return (Criteria) this;
        }

        public Criteria andRealtimeLessThanOrEqualTo(String value) {
            addCriterion("realtime <=", value, "realtime");
            return (Criteria) this;
        }

        public Criteria andRealtimeLike(String value) {
            addCriterion("realtime like", value, "realtime");
            return (Criteria) this;
        }

        public Criteria andRealtimeNotLike(String value) {
            addCriterion("realtime not like", value, "realtime");
            return (Criteria) this;
        }

        public Criteria andRealtimeIn(List<String> values) {
            addCriterion("realtime in", values, "realtime");
            return (Criteria) this;
        }

        public Criteria andRealtimeNotIn(List<String> values) {
            addCriterion("realtime not in", values, "realtime");
            return (Criteria) this;
        }

        public Criteria andRealtimeBetween(String value1, String value2) {
            addCriterion("realtime between", value1, value2, "realtime");
            return (Criteria) this;
        }

        public Criteria andRealtimeNotBetween(String value1, String value2) {
            addCriterion("realtime not between", value1, value2, "realtime");
            return (Criteria) this;
        }

        public Criteria andFaultlevelIsNull() {
            addCriterion("faultLevel is null");
            return (Criteria) this;
        }

        public Criteria andFaultlevelIsNotNull() {
            addCriterion("faultLevel is not null");
            return (Criteria) this;
        }

        public Criteria andFaultlevelEqualTo(String value) {
            addCriterion("faultLevel =", value, "faultlevel");
            return (Criteria) this;
        }

        public Criteria andFaultlevelNotEqualTo(String value) {
            addCriterion("faultLevel <>", value, "faultlevel");
            return (Criteria) this;
        }

        public Criteria andFaultlevelGreaterThan(String value) {
            addCriterion("faultLevel >", value, "faultlevel");
            return (Criteria) this;
        }

        public Criteria andFaultlevelGreaterThanOrEqualTo(String value) {
            addCriterion("faultLevel >=", value, "faultlevel");
            return (Criteria) this;
        }

        public Criteria andFaultlevelLessThan(String value) {
            addCriterion("faultLevel <", value, "faultlevel");
            return (Criteria) this;
        }

        public Criteria andFaultlevelLessThanOrEqualTo(String value) {
            addCriterion("faultLevel <=", value, "faultlevel");
            return (Criteria) this;
        }

        public Criteria andFaultlevelLike(String value) {
            addCriterion("faultLevel like", value, "faultlevel");
            return (Criteria) this;
        }

        public Criteria andFaultlevelNotLike(String value) {
            addCriterion("faultLevel not like", value, "faultlevel");
            return (Criteria) this;
        }

        public Criteria andFaultlevelIn(List<String> values) {
            addCriterion("faultLevel in", values, "faultlevel");
            return (Criteria) this;
        }

        public Criteria andFaultlevelNotIn(List<String> values) {
            addCriterion("faultLevel not in", values, "faultlevel");
            return (Criteria) this;
        }

        public Criteria andFaultlevelBetween(String value1, String value2) {
            addCriterion("faultLevel between", value1, value2, "faultlevel");
            return (Criteria) this;
        }

        public Criteria andFaultlevelNotBetween(String value1, String value2) {
            addCriterion("faultLevel not between", value1, value2, "faultlevel");
            return (Criteria) this;
        }

        public Criteria andModidIsNull() {
            addCriterion("modID is null");
            return (Criteria) this;
        }

        public Criteria andModidIsNotNull() {
            addCriterion("modID is not null");
            return (Criteria) this;
        }

        public Criteria andModidEqualTo(String value) {
            addCriterion("modID =", value, "modid");
            return (Criteria) this;
        }

        public Criteria andModidNotEqualTo(String value) {
            addCriterion("modID <>", value, "modid");
            return (Criteria) this;
        }

        public Criteria andModidGreaterThan(String value) {
            addCriterion("modID >", value, "modid");
            return (Criteria) this;
        }

        public Criteria andModidGreaterThanOrEqualTo(String value) {
            addCriterion("modID >=", value, "modid");
            return (Criteria) this;
        }

        public Criteria andModidLessThan(String value) {
            addCriterion("modID <", value, "modid");
            return (Criteria) this;
        }

        public Criteria andModidLessThanOrEqualTo(String value) {
            addCriterion("modID <=", value, "modid");
            return (Criteria) this;
        }

        public Criteria andModidLike(String value) {
            addCriterion("modID like", value, "modid");
            return (Criteria) this;
        }

        public Criteria andModidNotLike(String value) {
            addCriterion("modID not like", value, "modid");
            return (Criteria) this;
        }

        public Criteria andModidIn(List<String> values) {
            addCriterion("modID in", values, "modid");
            return (Criteria) this;
        }

        public Criteria andModidNotIn(List<String> values) {
            addCriterion("modID not in", values, "modid");
            return (Criteria) this;
        }

        public Criteria andModidBetween(String value1, String value2) {
            addCriterion("modID between", value1, value2, "modid");
            return (Criteria) this;
        }

        public Criteria andModidNotBetween(String value1, String value2) {
            addCriterion("modID not between", value1, value2, "modid");
            return (Criteria) this;
        }

        public Criteria andRemarksIsNull() {
            addCriterion("remarks is null");
            return (Criteria) this;
        }

        public Criteria andRemarksIsNotNull() {
            addCriterion("remarks is not null");
            return (Criteria) this;
        }

        public Criteria andRemarksEqualTo(String value) {
            addCriterion("remarks =", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotEqualTo(String value) {
            addCriterion("remarks <>", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksGreaterThan(String value) {
            addCriterion("remarks >", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksGreaterThanOrEqualTo(String value) {
            addCriterion("remarks >=", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLessThan(String value) {
            addCriterion("remarks <", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLessThanOrEqualTo(String value) {
            addCriterion("remarks <=", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLike(String value) {
            addCriterion("remarks like", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotLike(String value) {
            addCriterion("remarks not like", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksIn(List<String> values) {
            addCriterion("remarks in", values, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotIn(List<String> values) {
            addCriterion("remarks not in", values, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksBetween(String value1, String value2) {
            addCriterion("remarks between", value1, value2, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotBetween(String value1, String value2) {
            addCriterion("remarks not between", value1, value2, "remarks");
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