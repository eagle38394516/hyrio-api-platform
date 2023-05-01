package xyz.hyrio.platform.pojo.po;

import io.swagger.v3.oas.annotations.media.Schema;

import java.util.Date;

@Schema(description = "工作空间")
public class WorkspacePo {
    @Schema(description = "工作空间ID")
    private Integer id;
    @Schema(description = "用户ID")
    private Integer userId;
    @Schema(description = "名称")
    private String name;
    @Schema(description = "创建时间")
    private Date createTime;
    @Schema(description = "更新时间")
    private Date updateTime;
    @Schema(description = "是否已被删除")
    private Boolean deleted;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Boolean getDeleted() {
        return deleted;
    }

    public void setDeleted(Boolean deleted) {
        this.deleted = deleted;
    }

    @Override
    public String toString() {
        return "WorkspacePo{" +
               "id=" + id +
               ", userId=" + userId +
               ", name='" + name + '\'' +
               ", createTime=" + createTime +
               ", updateTime=" + updateTime +
               ", deleted=" + deleted +
               '}';
    }
}
