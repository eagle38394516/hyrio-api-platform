package xyz.hyrio.platform.pojo.po;

import io.swagger.v3.oas.annotations.media.Schema;

import java.util.Date;

@Schema(description = "工程")
public class ProjectPo {
    @Schema(description = "工程ID")
    private Integer id;
    @Schema(description = "工作空间ID")
    private Integer workspaceId;
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

    public Integer getWorkspaceId() {
        return workspaceId;
    }

    public void setWorkspaceId(Integer workspaceId) {
        this.workspaceId = workspaceId;
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
        return "ProjectPo{" +
               "id=" + id +
               ", workspaceId=" + workspaceId +
               ", name='" + name + '\'' +
               ", createTime=" + createTime +
               ", updateTime=" + updateTime +
               ", deleted=" + deleted +
               '}';
    }
}
