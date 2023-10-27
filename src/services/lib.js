export const slugger = (title)=>{
    const slug = title.normalize("NFD").replace(/[\u0300-\u036f]/g, "").toLowerCase().replace(/\s+/g, '-').replace(/\//g, "-")
    return slug
}