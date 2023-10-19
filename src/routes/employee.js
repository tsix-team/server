const express = require('express');
const router = express.Router();
const bcrypt = require('bcryptjs')
const Employee = require('../models/employee');
const employee = require('../models/employee');
const jwt = require('jsonwebtoken');
const config = require('../config');
/* GET users listing. */
router.post('/', async (req, res, next) => {
  let employee = new Employee();
  employee.name = req.body.name;
  employee.email = req.body.email;
  employee.password = bcrypt.hashSync(req.body.password)
  employee.zone = req.body.zone;
  employee.role= req.body.role;
  employee.phone = req.body.phone;
  employee.image = employee.gravatar();
  employee.status = req.body.status;

  try{
    employee = await employee.save();
    if(!employee){
        return res.status(500).json({
            success: false,
            message: 'Ko the tao employee'
        })
    }
    res.json({
        success:true,
        employee: employee
    })
  } catch (error){
    return res.status(500).json({
        success: false,
        message: 'Khong the tao employee'
    })
  }
});
router.get('/', async (req, res, next) => {
  const employeeList = await Employee.find().select('-password');

    if(!employeeList){
        return res.status(500).json({
            success: false,
            message: 'Khong ton tai employee'
        })
    }
    res.json({
        success:true,
        employee: employeeList
    })
  })

  router.get('/:id', async (req, res, next) => {
    const employee = await Employee.findById(req.params.id).select('-password');
  
      if(!employee){
          return res.status(500).json({
              success: false,
              message: 'Khong ton tai employee'
          })
      }
      res.json({
          success:true,
          employee: employee
      })
    })  
router.put('/:id', async (req, res, next) => {
  const employeeCurrent = await Employee.findById(req.params.id).select('-password');
  if(!employeeCurrent){
    return res.status(500).json({
        success: false,
        message: 'Khong ton tai employee'
    })
  }
  let newPassword = req.body.password ? bcrypt.hashSync(req.body.password): employeeCurrent.password;
  let employee = {
    name : req.body.name,
    email : req.body.email,
    password : newPassword,
    zone : req.body.zone,
    role : req.body.role,
    phone : req.body.phone,
    status : req.body.status,
  }

  
  try{
    const emp = await Employee.findByIdAndUpdate(req.params.id, employee);

    if(!emp){
        return res.status(500).json({
            success: false,
            message: 'Ko the tao employee'
        })
    }
    res.json({
        success:true,
        dataInput: employee,
        employee: emp
    })
  } catch (error){
    return res.status(500).json({
        success: false,
        message: 'Khong the tao employee'
    })
  }
});
router.delete('/:id', async (req, res, next) => {
  Employee.findByIdAndRemove(req.params.id).then(employee=>{
    if(employee){
      return res.status(200).json({
        success:true,
        message:"Da xoa employee "+employee.name
      })
    } else{
      return res.status(404).json({
        success:false,
        message:"Employee khong ton tai"
      })
    }
  }).catch(error=>{
    return res.status(500).json({
      success:false,
      error:error
    })
  });
})
 

router.post('/login', async (req, res, next) => {
  try{

    let employee = await Employee.findOne({email: req.body.email});
    if(!employee){
        return res.status(500).json({
            success: false,
            message: 'Ko ton tai employee'
        })
    }
    if(employee && bcrypt.compareSync(req.body.password, employee.password)){
      const token = jwt.sign({
        employeeId: employee._id
      },config.SECRET_KEY, {expiresIn:'1d'});
      res.status(200).json({
          success:true,
          employee: employee.employeeId,
          token:token
      }) 
    } else{
      return res.status(400).json({
            success: false,
            message: 'Sai mat khau'
        })
    }
    
  } catch (error){
    return res.status(500).json({
        success: false,
        error: error
    })
  }
});
// router.get('/get/profile', async (req, res, next) => {
//   const authHeader = req.headers.authorization;

//   if (authHeader) {
//     const token = authHeader.split(' ')[1];
//     const user = jwt.verify(token,config.SECRET_KEY)
//     console.log('token is : ',token);
//     console.log("id user: ",user.employeeId);
//     try {
//     const employee = await Employee.findById(user.employeeId).select('-password')
//     console.log("user: ",employee);
  
//       if(!employee){
//           return res.status(500).json({
//               success: false,
//               message: 'Khong ton tai employee'
//           })
//       } else{
//         return res.json({
//           success:true,
//           employee: employee
//       })
//       }
      
//     } catch (error) {
//       return res.status(500).json({
//         success: false,
//         message: 'Failed'
//     })
//     }
//   } 
// })

module.exports = router;
